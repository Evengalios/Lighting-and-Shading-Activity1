Shader "Custom/NormalMappedSurface"
{
    Properties
    {
        _MainTex ("Base Texture", 2D) = "white" {}
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _BumpScale ("Normal Strength", Range(0,2)) = 1.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 300

        CGPROGRAM
        #pragma surface surf Lambert

        sampler2D _MainTex;
        sampler2D _BumpMap;
        float _BumpScale;

        struct Input
        {
            float2 uv_MainTex;
            float2 uv_BumpMap;
        };

        void surf (Input IN, inout SurfaceOutput o)
        {
            fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
            o.Albedo = c.rgb;
            float3 n = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap)).rgb;
            n.xy *= _BumpScale;
            o.Normal = normalize(n);
        }
        ENDCG
    }
    FallBack "Diffuse"
}