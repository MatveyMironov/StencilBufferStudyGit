Shader "Custom/InvisibleByDefault"
{
    Properties
    {
        [IntRange] _StencilID ("Stencil ID", Range(0, 255)) = 0
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" "Queue"="Geometry-1" "RenderPipeline"="UniversalPipeline" }
        
        Pass
        {
            Stencil
            {
                Ref [_StencilID]
                Comp Equal
            }
        }
    }
}
