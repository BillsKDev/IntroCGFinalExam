Shader "Custom/URP_EnhancedHologram"
{
    Properties
    {
        _MainTex ("Main Texture", 2D) = "white" {}  
        _LineColor ("Line Color", Color) = (0, 1, 1, 1)  
        _LineSpeed ("Line Speed", Float) = 1.0  
        _LineFrequency ("Line Frequency", Float) = 10.0  
        _Transparency ("Transparency", Range(0, 1)) = 0.5  
    }

    SubShader
    {
        Tags { "RenderPipeline" = "UniversalRenderPipeline" "Queue" = "Transparent" "RenderType" = "Transparent" }

        Blend SrcAlpha OneMinusSrcAlpha

        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;  
                float3 normalOS : NORMAL;      
                float2 uv : TEXCOORD0;         
            };

            struct Varyings
            {
                float4 positionHCS : SV_POSITION;  
                float3 normalWS : TEXCOORD1;       
                float3 viewDirWS : TEXCOORD2;      
                float2 uv : TEXCOORD0;             
            };

            TEXTURE2D(_MainTex);
            SAMPLER(sampler_MainTex);
            float4 _LineColor;
            float _LineSpeed;
            float _LineFrequency;
            float _Transparency;

            Varyings vert(Attributes IN)
            {
                Varyings OUT;
                OUT.positionHCS = TransformObjectToHClip(IN.positionOS.xyz);
                OUT.normalWS = normalize(TransformObjectToWorldNormal(IN.normalOS));
                OUT.viewDirWS = normalize(GetWorldSpaceViewDir(IN.positionOS.xyz));
                OUT.uv = IN.uv;

                return OUT;
            }

            half4 frag(Varyings IN) : SV_Target
            {
                half4 texColor = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, IN.uv);

                float lineValue = sin(IN.uv.x * _LineFrequency + _Time.z * _LineSpeed);
                half3 lineColor = _LineColor.rgb * step(0.5, lineValue);  

                half3 finalColor = texColor.rgb + lineColor;

                return half4(finalColor, _Transparency);
            }

            ENDHLSL
        }
    }
}