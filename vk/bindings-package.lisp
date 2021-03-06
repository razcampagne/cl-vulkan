;;; this file is automatically generated, do not edit
#||
Copyright (c) 2015-2017 The Khronos Group Inc.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and/or associated documentation files (the
"Materials"), to deal in the Materials without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Materials, and to
permit persons to whom the Materials are furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Materials.

THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.

------------------------------------------------------------------------
||#

(defpackage #:cl-vulkan-bindings
  (:use #:cl #:cffi)
  (:nicknames #:%vk)
  (:export
    #:pfn-allocation-function ;; :func
    #:pfn-debug-report-callback-ext ;; :func
    #:pfn-free-function ;; :func
    #:pfn-internal-allocation-notification ;; :func
    #:pfn-internal-free-notification ;; :func
    #:pfn-reallocation-function ;; :func
    #:pfn-void-function ;; :func
    #:access-flag-bits ;; :enum
    #:access-flags ;; :bitmask
    #:acquire-next-image-info-khx ;; :struct
    #:allocation-callbacks ;; :struct
    #:android-surface-create-flags-khr ;; :bitmask
    #:android-surface-create-info-khr ;; :struct
    #:application-info ;; :struct
    #:attachment-description ;; :struct
    #:attachment-description-flag-bits ;; :enum
    #:attachment-description-flags ;; :bitmask
    #:attachment-load-op ;; :enum
    #:attachment-reference ;; :struct
    #:attachment-store-op ;; :enum
    #:bind-buffer-memory-info-khx ;; :struct
    #:bind-image-memory-info-khx ;; :struct
    #:bind-image-memory-swapchain-info-khx ;; :struct
    #:bind-sparse-info ;; :struct
    #:blend-factor ;; :enum
    #:blend-op ;; :enum
    #:bool32 ;; :alias
    #:border-color ;; :enum
    #:buffer ;; :non-dispatch-handle
    #:buffer-copy ;; :struct
    #:buffer-create-flag-bits ;; :enum
    #:buffer-create-flags ;; :bitmask
    #:buffer-create-info ;; :struct
    #:buffer-image-copy ;; :struct
    #:buffer-memory-barrier ;; :struct
    #:buffer-usage-flag-bits ;; :enum
    #:buffer-usage-flags ;; :bitmask
    #:buffer-view ;; :non-dispatch-handle
    #:buffer-view-create-flag-bits ;; :enum
    #:buffer-view-create-flags ;; :bitmask
    #:buffer-view-create-info ;; :struct
    #:clear-attachment ;; :struct
    #:clear-color-value ;; :union
    #:clear-depth-stencil-value ;; :struct
    #:clear-rect ;; :struct
    #:clear-value ;; :union
    #:cmd-process-commands-info-nvx ;; :struct
    #:cmd-reserve-space-for-commands-info-nvx ;; :struct
    #:color-component-flag-bits ;; :enum
    #:color-component-flags ;; :bitmask
    #:color-space-khr ;; :enum
    #:command-buffer ;; :handle
    #:command-buffer-allocate-info ;; :struct
    #:command-buffer-begin-info ;; :struct
    #:command-buffer-inheritance-info ;; :struct
    #:command-buffer-level ;; :enum
    #:command-buffer-reset-flag-bits ;; :enum
    #:command-buffer-reset-flags ;; :bitmask
    #:command-buffer-usage-flag-bits ;; :enum
    #:command-buffer-usage-flags ;; :bitmask
    #:command-pool ;; :non-dispatch-handle
    #:command-pool-create-flag-bits ;; :enum
    #:command-pool-create-flags ;; :bitmask
    #:command-pool-create-info ;; :struct
    #:command-pool-reset-flag-bits ;; :enum
    #:command-pool-reset-flags ;; :bitmask
    #:command-pool-trim-flags-khr ;; :bitmask
    #:compare-op ;; :enum
    #:component-mapping ;; :struct
    #:component-swizzle ;; :enum
    #:composite-alpha-flag-bits-khr ;; :enum
    #:composite-alpha-flags-khr ;; :bitmask
    #:compute-pipeline-create-info ;; :struct
    #:copy-descriptor-set ;; :struct
    #:cull-mode-flag-bits ;; :enum
    #:cull-mode-flags ;; :bitmask
    #:d-3d-1-2-fence-submit-info-khx ;; :struct
    #:debug-marker-marker-info-ext ;; :struct
    #:debug-marker-object-name-info-ext ;; :struct
    #:debug-marker-object-tag-info-ext ;; :struct
    #:debug-report-callback-create-info-ext ;; :struct
    #:debug-report-callback-ext ;; :non-dispatch-handle
    #:debug-report-flag-bits-ext ;; :enum
    #:debug-report-flags-ext ;; :bitmask
    #:debug-report-object-type-ext ;; :enum
    #:dedicated-allocation-buffer-create-info-nv ;; :struct
    #:dedicated-allocation-image-create-info-nv ;; :struct
    #:dedicated-allocation-memory-allocate-info-nv ;; :struct
    #:dependency-flag-bits ;; :enum
    #:dependency-flags ;; :bitmask
    #:descriptor-buffer-info ;; :struct
    #:descriptor-image-info ;; :struct
    #:descriptor-pool ;; :non-dispatch-handle
    #:descriptor-pool-create-flag-bits ;; :enum
    #:descriptor-pool-create-flags ;; :bitmask
    #:descriptor-pool-create-info ;; :struct
    #:descriptor-pool-reset-flags ;; :bitmask
    #:descriptor-pool-size ;; :struct
    #:descriptor-set ;; :non-dispatch-handle
    #:descriptor-set-allocate-info ;; :struct
    #:descriptor-set-layout ;; :non-dispatch-handle
    #:descriptor-set-layout-binding ;; :struct
    #:descriptor-set-layout-create-flag-bits ;; :enum
    #:descriptor-set-layout-create-flags ;; :bitmask
    #:descriptor-set-layout-create-info ;; :struct
    #:descriptor-type ;; :enum
    #:descriptor-update-template-create-flags-khr ;; :bitmask
    #:descriptor-update-template-create-info-khr ;; :struct
    #:descriptor-update-template-entry-khr ;; :struct
    #:descriptor-update-template-khr ;; :non-dispatch-handle
    #:descriptor-update-template-type-khr ;; :enum
    #:device ;; :handle
    #:device-create-flag-bits ;; :enum
    #:device-create-flags ;; :bitmask
    #:device-create-info ;; :struct
    #:device-event-info-ext ;; :struct
    #:device-event-type-ext ;; :enum
    #:device-generated-commands-features-nvx ;; :struct
    #:device-generated-commands-limits-nvx ;; :struct
    #:device-group-bind-sparse-info-khx ;; :struct
    #:device-group-command-buffer-begin-info-khx ;; :struct
    #:device-group-device-create-info-khx ;; :struct
    #:device-group-present-capabilities-khx ;; :struct
    #:device-group-present-info-khx ;; :struct
    #:device-group-present-mode-flag-bits-khx ;; :enum
    #:device-group-present-mode-flags-khx ;; :bitmask
    #:device-group-render-pass-begin-info-khx ;; :struct
    #:device-group-submit-info-khx ;; :struct
    #:device-group-swapchain-create-info-khx ;; :struct
    #:device-memory ;; :non-dispatch-handle
    #:device-queue-create-flag-bits ;; :enum
    #:device-queue-create-flags ;; :bitmask
    #:device-queue-create-info ;; :struct
    #:device-size ;; :alias
    #:discard-rectangle-mode-ext ;; :enum
    #:dispatch-indirect-command ;; :struct
    #:display-event-info-ext ;; :struct
    #:display-event-type-ext ;; :enum
    #:display-khr ;; :non-dispatch-handle
    #:display-mode-create-flags-khr ;; :bitmask
    #:display-mode-create-info-khr ;; :struct
    #:display-mode-khr ;; :non-dispatch-handle
    #:display-mode-parameters-khr ;; :struct
    #:display-mode-properties-khr ;; :struct
    #:display-plane-alpha-flag-bits-khr ;; :enum
    #:display-plane-alpha-flags-khr ;; :bitmask
    #:display-plane-capabilities-khr ;; :struct
    #:display-plane-properties-khr ;; :struct
    #:display-power-info-ext ;; :struct
    #:display-power-state-ext ;; :enum
    #:display-present-info-khr ;; :struct
    #:display-properties-khr ;; :struct
    #:display-surface-create-flags-khr ;; :bitmask
    #:display-surface-create-info-khr ;; :struct
    #:draw-indexed-indirect-command ;; :struct
    #:draw-indirect-command ;; :struct
    #:dynamic-state ;; :enum
    #:event ;; :non-dispatch-handle
    #:event-create-flags ;; :bitmask
    #:event-create-info ;; :struct
    #:export-memory-allocate-info-khx ;; :struct
    #:export-memory-allocate-info-nv ;; :struct
    #:export-memory-win32-handle-info-khx ;; :struct
    #:export-memory-win32-handle-info-nv ;; :struct
    #:export-semaphore-create-info-khx ;; :struct
    #:export-semaphore-win32-handle-info-khx ;; :struct
    #:extension-properties ;; :struct
    #:extent-2d ;; :struct
    #:extent-3d ;; :struct
    #:external-buffer-properties-khx ;; :struct
    #:external-image-format-properties-khx ;; :struct
    #:external-image-format-properties-nv ;; :struct
    #:external-memory-buffer-create-info-khx ;; :struct
    #:external-memory-feature-flag-bits-khx ;; :enum
    #:external-memory-feature-flag-bits-nv ;; :enum
    #:external-memory-feature-flags-khx ;; :bitmask
    #:external-memory-feature-flags-nv ;; :bitmask
    #:external-memory-handle-type-flag-bits-khx ;; :enum
    #:external-memory-handle-type-flag-bits-nv ;; :enum
    #:external-memory-handle-type-flags-khx ;; :bitmask
    #:external-memory-handle-type-flags-nv ;; :bitmask
    #:external-memory-image-create-info-khx ;; :struct
    #:external-memory-image-create-info-nv ;; :struct
    #:external-memory-properties-khx ;; :struct
    #:external-semaphore-feature-flag-bits-khx ;; :enum
    #:external-semaphore-feature-flags-khx ;; :bitmask
    #:external-semaphore-handle-type-flag-bits-khx ;; :enum
    #:external-semaphore-handle-type-flags-khx ;; :bitmask
    #:external-semaphore-properties-khx ;; :struct
    #:fence ;; :non-dispatch-handle
    #:fence-create-flag-bits ;; :enum
    #:fence-create-flags ;; :bitmask
    #:fence-create-info ;; :struct
    #:filter ;; :enum
    #:flags ;; :alias
    #:format ;; :enum
    #:format-feature-flag-bits ;; :enum
    #:format-feature-flags ;; :bitmask
    #:format-properties ;; :struct
    #:format-properties-2-khr ;; :struct
    #:framebuffer ;; :non-dispatch-handle
    #:framebuffer-create-flag-bits ;; :enum
    #:framebuffer-create-flags ;; :bitmask
    #:framebuffer-create-info ;; :struct
    #:front-face ;; :enum
    #:graphics-pipeline-create-info ;; :struct
    #:hdr-metadata-ext ;; :struct
    #:i-o-s-surface-create-flags-mvk ;; :bitmask
    #:i-o-s-surface-create-info-mvk ;; :struct
    #:image ;; :non-dispatch-handle
    #:image-aspect-flag-bits ;; :enum
    #:image-aspect-flags ;; :bitmask
    #:image-blit ;; :struct
    #:image-copy ;; :struct
    #:image-create-flag-bits ;; :enum
    #:image-create-flags ;; :bitmask
    #:image-create-info ;; :struct
    #:image-format-properties ;; :struct
    #:image-format-properties-2-khr ;; :struct
    #:image-layout ;; :enum
    #:image-memory-barrier ;; :struct
    #:image-resolve ;; :struct
    #:image-subresource ;; :struct
    #:image-subresource-layers ;; :struct
    #:image-subresource-range ;; :struct
    #:image-swapchain-create-info-khx ;; :struct
    #:image-tiling ;; :enum
    #:image-type ;; :enum
    #:image-usage-flag-bits ;; :enum
    #:image-usage-flags ;; :bitmask
    #:image-view ;; :non-dispatch-handle
    #:image-view-create-flags ;; :bitmask
    #:image-view-create-info ;; :struct
    #:image-view-type ;; :enum
    #:import-memory-fd-info-khx ;; :struct
    #:import-memory-win32-handle-info-khx ;; :struct
    #:import-memory-win32-handle-info-nv ;; :struct
    #:import-semaphore-fd-info-khx ;; :struct
    #:import-semaphore-win32-handle-info-khx ;; :struct
    #:index-type ;; :enum
    #:indirect-commands-layout-create-info-nvx ;; :struct
    #:indirect-commands-layout-nvx ;; :non-dispatch-handle
    #:indirect-commands-layout-token-nvx ;; :struct
    #:indirect-commands-layout-usage-flag-bits-nvx ;; :enum
    #:indirect-commands-layout-usage-flags-nvx ;; :bitmask
    #:indirect-commands-token-nvx ;; :struct
    #:indirect-commands-token-type-nvx ;; :enum
    #:instance ;; :handle
    #:instance-create-flag-bits ;; :enum
    #:instance-create-flags ;; :bitmask
    #:instance-create-info ;; :struct
    #:internal-allocation-type ;; :enum
    #:layer-properties ;; :struct
    #:logic-op ;; :enum
    #:mac-o-s-surface-create-flags-mvk ;; :bitmask
    #:mac-o-s-surface-create-info-mvk ;; :struct
    #:mapped-memory-range ;; :struct
    #:memory-allocate-flag-bits-khx ;; :enum
    #:memory-allocate-flags-info-khx ;; :struct
    #:memory-allocate-flags-khx ;; :bitmask
    #:memory-allocate-info ;; :struct
    #:memory-barrier ;; :struct
    #:memory-fd-properties-khx ;; :struct
    #:memory-heap ;; :struct
    #:memory-heap-flag-bits ;; :enum
    #:memory-heap-flags ;; :bitmask
    #:memory-map-flags ;; :bitmask
    #:memory-property-flag-bits ;; :enum
    #:memory-property-flags ;; :bitmask
    #:memory-requirements ;; :struct
    #:memory-type ;; :struct
    #:memory-win32-handle-properties-khx ;; :struct
    #:mir-surface-create-flags-khr ;; :bitmask
    #:mir-surface-create-info-khr ;; :struct
    #:object-entry-type-nvx ;; :enum
    #:object-entry-usage-flag-bits-nvx ;; :enum
    #:object-entry-usage-flags-nvx ;; :bitmask
    #:object-table-create-info-nvx ;; :struct
    #:object-table-descriptor-set-entry-nvx ;; :struct
    #:object-table-entry-nvx ;; :struct
    #:object-table-index-buffer-entry-nvx ;; :struct
    #:object-table-nvx ;; :non-dispatch-handle
    #:object-table-pipeline-entry-nvx ;; :struct
    #:object-table-push-constant-entry-nvx ;; :struct
    #:object-table-vertex-buffer-entry-nvx ;; :struct
    #:object-type ;; :enum
    #:offset-2d ;; :struct
    #:offset-3d ;; :struct
    #:past-presentation-timing-google ;; :struct
    #:peer-memory-feature-flag-bits-khx ;; :enum
    #:peer-memory-feature-flags-khx ;; :bitmask
    #:physical-device ;; :handle
    #:physical-device-discard-rectangle-properties-ext ;; :struct
    #:physical-device-external-buffer-info-khx ;; :struct
    #:physical-device-external-image-format-info-khx ;; :struct
    #:physical-device-external-semaphore-info-khx ;; :struct
    #:physical-device-features ;; :struct
    #:physical-device-features-2-khr ;; :struct
    #:physical-device-group-properties-khx ;; :struct
    #:physical-device-id-properties-khx ;; :struct
    #:physical-device-image-format-info-2-khr ;; :struct
    #:physical-device-limits ;; :struct
    #:physical-device-memory-properties ;; :struct
    #:physical-device-memory-properties-2-khr ;; :struct
    #:physical-device-multiview-features-khx ;; :struct
    #:physical-device-multiview-per-view-attributes-properties-nvx ;; :struct
    #:physical-device-multiview-properties-khx ;; :struct
    #:physical-device-properties ;; :struct
    #:physical-device-properties-2-khr ;; :struct
    #:physical-device-push-descriptor-properties-khr ;; :struct
    #:physical-device-sparse-image-format-info-2-khr ;; :struct
    #:physical-device-sparse-properties ;; :struct
    #:physical-device-surface-info-2-khr ;; :struct
    #:physical-device-type ;; :enum
    #:pipeline ;; :non-dispatch-handle
    #:pipeline-bind-point ;; :enum
    #:pipeline-cache ;; :non-dispatch-handle
    #:pipeline-cache-create-flag-bits ;; :enum
    #:pipeline-cache-create-flags ;; :bitmask
    #:pipeline-cache-create-info ;; :struct
    #:pipeline-cache-header-version ;; :enum
    #:pipeline-color-blend-attachment-state ;; :struct
    #:pipeline-color-blend-state-create-flag-bits ;; :enum
    #:pipeline-color-blend-state-create-flags ;; :bitmask
    #:pipeline-color-blend-state-create-info ;; :struct
    #:pipeline-create-flag-bits ;; :enum
    #:pipeline-create-flags ;; :bitmask
    #:pipeline-depth-stencil-state-create-flag-bits ;; :enum
    #:pipeline-depth-stencil-state-create-flags ;; :bitmask
    #:pipeline-depth-stencil-state-create-info ;; :struct
    #:pipeline-discard-rectangle-state-create-flags-ext ;; :bitmask
    #:pipeline-discard-rectangle-state-create-info-ext ;; :struct
    #:pipeline-dynamic-state-create-flag-bits ;; :enum
    #:pipeline-dynamic-state-create-flags ;; :bitmask
    #:pipeline-dynamic-state-create-info ;; :struct
    #:pipeline-input-assembly-state-create-flag-bits ;; :enum
    #:pipeline-input-assembly-state-create-flags ;; :bitmask
    #:pipeline-input-assembly-state-create-info ;; :struct
    #:pipeline-layout ;; :non-dispatch-handle
    #:pipeline-layout-create-flag-bits ;; :enum
    #:pipeline-layout-create-flags ;; :bitmask
    #:pipeline-layout-create-info ;; :struct
    #:pipeline-multisample-state-create-flag-bits ;; :enum
    #:pipeline-multisample-state-create-flags ;; :bitmask
    #:pipeline-multisample-state-create-info ;; :struct
    #:pipeline-rasterization-state-create-flag-bits ;; :enum
    #:pipeline-rasterization-state-create-flags ;; :bitmask
    #:pipeline-rasterization-state-create-info ;; :struct
    #:pipeline-rasterization-state-rasterization-order-amd ;; :struct
    #:pipeline-shader-stage-create-flag-bits ;; :enum
    #:pipeline-shader-stage-create-flags ;; :bitmask
    #:pipeline-shader-stage-create-info ;; :struct
    #:pipeline-stage-flag-bits ;; :enum
    #:pipeline-stage-flags ;; :bitmask
    #:pipeline-tessellation-state-create-flag-bits ;; :enum
    #:pipeline-tessellation-state-create-flags ;; :bitmask
    #:pipeline-tessellation-state-create-info ;; :struct
    #:pipeline-vertex-input-state-create-flag-bits ;; :enum
    #:pipeline-vertex-input-state-create-flags ;; :bitmask
    #:pipeline-vertex-input-state-create-info ;; :struct
    #:pipeline-viewport-state-create-flag-bits ;; :enum
    #:pipeline-viewport-state-create-flags ;; :bitmask
    #:pipeline-viewport-state-create-info ;; :struct
    #:pipeline-viewport-swizzle-state-create-flags-nv ;; :bitmask
    #:pipeline-viewport-swizzle-state-create-info-nv ;; :struct
    #:pipeline-viewport-w-scaling-state-create-info-nv ;; :struct
    #:polygon-mode ;; :enum
    #:present-info-khr ;; :struct
    #:present-mode-khr ;; :enum
    #:present-region-khr ;; :struct
    #:present-regions-khr ;; :struct
    #:present-time-google ;; :struct
    #:present-times-info-google ;; :struct
    #:primitive-topology ;; :enum
    #:push-constant-range ;; :struct
    #:query-control-flag-bits ;; :enum
    #:query-control-flags ;; :bitmask
    #:query-pipeline-statistic-flag-bits ;; :enum
    #:query-pipeline-statistic-flags ;; :bitmask
    #:query-pool ;; :non-dispatch-handle
    #:query-pool-create-flag-bits ;; :enum
    #:query-pool-create-flags ;; :bitmask
    #:query-pool-create-info ;; :struct
    #:query-result-flag-bits ;; :enum
    #:query-result-flags ;; :bitmask
    #:query-type ;; :enum
    #:queue ;; :handle
    #:queue-family-properties ;; :struct
    #:queue-family-properties-2-khr ;; :struct
    #:queue-flag-bits ;; :enum
    #:queue-flags ;; :bitmask
    #:rasterization-order-amd ;; :enum
    #:rect-2d ;; :struct
    #:rect-3d ;; :struct
    #:rect-layer-khr ;; :struct
    #:refresh-cycle-duration-google ;; :struct
    #:render-pass ;; :non-dispatch-handle
    #:render-pass-begin-info ;; :struct
    #:render-pass-create-flag-bits ;; :enum
    #:render-pass-create-flags ;; :bitmask
    #:render-pass-create-info ;; :struct
    #:render-pass-multiview-create-info-khx ;; :struct
    #:result ;; :enum
    #:sample-count-flag-bits ;; :enum
    #:sample-count-flags ;; :bitmask
    #:sample-mask ;; :alias
    #:sampler ;; :non-dispatch-handle
    #:sampler-address-mode ;; :enum
    #:sampler-create-flag-bits ;; :enum
    #:sampler-create-flags ;; :bitmask
    #:sampler-create-info ;; :struct
    #:sampler-mipmap-mode ;; :enum
    #:semaphore ;; :non-dispatch-handle
    #:semaphore-create-flags ;; :bitmask
    #:semaphore-create-info ;; :struct
    #:shader-module ;; :non-dispatch-handle
    #:shader-module-create-flags ;; :bitmask
    #:shader-module-create-info ;; :struct
    #:shader-stage-flag-bits ;; :enum
    #:shader-stage-flags ;; :bitmask
    #:shared-present-surface-capabilities-khr ;; :struct
    #:sharing-mode ;; :enum
    #:sparse-buffer-memory-bind-info ;; :struct
    #:sparse-image-format-flag-bits ;; :enum
    #:sparse-image-format-flags ;; :bitmask
    #:sparse-image-format-properties ;; :struct
    #:sparse-image-format-properties-2-khr ;; :struct
    #:sparse-image-memory-bind ;; :struct
    #:sparse-image-memory-bind-info ;; :struct
    #:sparse-image-memory-requirements ;; :struct
    #:sparse-image-opaque-memory-bind-info ;; :struct
    #:sparse-memory-bind ;; :struct
    #:sparse-memory-bind-flag-bits ;; :enum
    #:sparse-memory-bind-flags ;; :bitmask
    #:specialization-info ;; :struct
    #:specialization-map-entry ;; :struct
    #:stencil-face-flag-bits ;; :enum
    #:stencil-face-flags ;; :bitmask
    #:stencil-op ;; :enum
    #:stencil-op-state ;; :struct
    #:structure-type ;; :enum
    #:submit-info ;; :struct
    #:subpass-contents ;; :enum
    #:subpass-dependency ;; :struct
    #:subpass-description ;; :struct
    #:subpass-description-flag-bits ;; :enum
    #:subpass-description-flags ;; :bitmask
    #:subresource-layout ;; :struct
    #:surface-capabilities-2-ext ;; :struct
    #:surface-capabilities-2-khr ;; :struct
    #:surface-capabilities-khr ;; :struct
    #:surface-counter-flag-bits-ext ;; :enum
    #:surface-counter-flags-ext ;; :bitmask
    #:surface-format-2-khr ;; :struct
    #:surface-format-khr ;; :struct
    #:surface-khr ;; :non-dispatch-handle
    #:surface-transform-flag-bits-khr ;; :enum
    #:surface-transform-flags-khr ;; :bitmask
    #:swapchain-counter-create-info-ext ;; :struct
    #:swapchain-create-flag-bits-khr ;; :enum
    #:swapchain-create-flags-khr ;; :bitmask
    #:swapchain-create-info-khr ;; :struct
    #:swapchain-khr ;; :non-dispatch-handle
    #:system-allocation-scope ;; :enum
    #:texture-l-o-d-gather-format-properties-amd ;; :struct
    #:validation-check-ext ;; :enum
    #:validation-flags-ext ;; :struct
    #:vertex-input-attribute-description ;; :struct
    #:vertex-input-binding-description ;; :struct
    #:vertex-input-rate ;; :enum
    #:vi-surface-create-flags-nn ;; :bitmask
    #:vi-surface-create-info-nn ;; :struct
    #:viewport ;; :struct
    #:viewport-coordinate-swizzle-nv ;; :enum
    #:viewport-swizzle-nv ;; :struct
    #:viewport-w-scaling-nv ;; :struct
    #:wayland-surface-create-flags-khr ;; :bitmask
    #:wayland-surface-create-info-khr ;; :struct
    #:win32-keyed-mutex-acquire-release-info-khx ;; :struct
    #:win32-keyed-mutex-acquire-release-info-nv ;; :struct
    #:win32-surface-create-flags-khr ;; :bitmask
    #:win32-surface-create-info-khr ;; :struct
    #:write-descriptor-set ;; :struct
    #:x-y-color-ext ;; :struct
    #:xcb-surface-create-flags-khr ;; :bitmask
    #:xcb-surface-create-info-khr ;; :struct
    #:xlib-surface-create-flags-khr ;; :bitmask
    #:xlib-surface-create-info-khr ;; :struct

    #:acquire-next-image-2-khx
    #:acquire-next-image-khr
    #:acquire-xlib-display-ext
    #:allocate-command-buffers
    #:allocate-descriptor-sets
    #:allocate-memory
    #:begin-command-buffer
    #:bind-buffer-memory
    #:bind-buffer-memory-2-khx
    #:bind-image-memory
    #:bind-image-memory-2-khx
    #:cmd-begin-query
    #:cmd-begin-render-pass
    #:cmd-bind-descriptor-sets
    #:cmd-bind-index-buffer
    #:cmd-bind-pipeline
    #:cmd-bind-vertex-buffers
    #:cmd-blit-image
    #:cmd-clear-attachments
    #:cmd-clear-color-image
    #:cmd-clear-depth-stencil-image
    #:cmd-copy-buffer
    #:cmd-copy-buffer-to-image
    #:cmd-copy-image
    #:cmd-copy-image-to-buffer
    #:cmd-copy-query-pool-results
    #:cmd-debug-marker-begin-ext
    #:cmd-debug-marker-end-ext
    #:cmd-debug-marker-insert-ext
    #:cmd-dispatch
    #:cmd-dispatch-base-khx
    #:cmd-dispatch-indirect
    #:cmd-draw
    #:cmd-draw-indexed
    #:cmd-draw-indexed-indirect
    #:cmd-draw-indexed-indirect-count-amd
    #:cmd-draw-indirect
    #:cmd-draw-indirect-count-amd
    #:cmd-end-query
    #:cmd-end-render-pass
    #:cmd-execute-commands
    #:cmd-fill-buffer
    #:cmd-next-subpass
    #:cmd-pipeline-barrier
    #:cmd-process-commands-nvx
    #:cmd-push-constants
    #:cmd-push-descriptor-set-khr
    #:cmd-push-descriptor-set-with-template-khr
    #:cmd-reserve-space-for-commands-nvx
    #:cmd-reset-event
    #:cmd-reset-query-pool
    #:cmd-resolve-image
    #:cmd-set-blend-constants
    #:cmd-set-depth-bias
    #:cmd-set-depth-bounds
    #:cmd-set-device-mask-khx
    #:cmd-set-discard-rectangle-ext
    #:cmd-set-event
    #:cmd-set-line-width
    #:cmd-set-scissor
    #:cmd-set-stencil-compare-mask
    #:cmd-set-stencil-reference
    #:cmd-set-stencil-write-mask
    #:cmd-set-viewport
    #:cmd-set-viewport-w-scaling-nv
    #:cmd-update-buffer
    #:cmd-wait-events
    #:cmd-write-timestamp
    #:create-android-surface-khr
    #:create-buffer
    #:create-buffer-view
    #:create-command-pool
    #:create-compute-pipelines
    #:create-debug-report-callback-ext
    #:create-descriptor-pool
    #:create-descriptor-set-layout
    #:create-descriptor-update-template-khr
    #:create-device
    #:create-display-mode-khr
    #:create-display-plane-surface-khr
    #:create-event
    #:create-fence
    #:create-framebuffer
    #:create-graphics-pipelines
    #:create-i-o-s-surface-mvk
    #:create-image
    #:create-image-view
    #:create-indirect-commands-layout-nvx
    #:create-instance
    #:create-mac-o-s-surface-mvk
    #:create-mir-surface-khr
    #:create-object-table-nvx
    #:create-pipeline-cache
    #:create-pipeline-layout
    #:create-query-pool
    #:create-render-pass
    #:create-sampler
    #:create-semaphore
    #:create-shader-module
    #:create-shared-swapchains-khr
    #:create-swapchain-khr
    #:create-vi-surface-nn
    #:create-wayland-surface-khr
    #:create-win32-surface-khr
    #:create-xcb-surface-khr
    #:create-xlib-surface-khr
    #:debug-marker-set-object-name-ext
    #:debug-marker-set-object-tag-ext
    #:debug-report-message-ext
    #:destroy-buffer
    #:destroy-buffer-view
    #:destroy-command-pool
    #:destroy-debug-report-callback-ext
    #:destroy-descriptor-pool
    #:destroy-descriptor-set-layout
    #:destroy-descriptor-update-template-khr
    #:destroy-device
    #:destroy-event
    #:destroy-fence
    #:destroy-framebuffer
    #:destroy-image
    #:destroy-image-view
    #:destroy-indirect-commands-layout-nvx
    #:destroy-instance
    #:destroy-object-table-nvx
    #:destroy-pipeline
    #:destroy-pipeline-cache
    #:destroy-pipeline-layout
    #:destroy-query-pool
    #:destroy-render-pass
    #:destroy-sampler
    #:destroy-semaphore
    #:destroy-shader-module
    #:destroy-surface-khr
    #:destroy-swapchain-khr
    #:device-wait-idle
    #:display-power-control-ext
    #:end-command-buffer
    #:enumerate-device-extension-properties
    #:enumerate-device-layer-properties
    #:enumerate-instance-extension-properties
    #:enumerate-instance-layer-properties
    #:enumerate-physical-device-groups-khx
    #:enumerate-physical-devices
    #:flush-mapped-memory-ranges
    #:free-command-buffers
    #:free-descriptor-sets
    #:free-memory
    #:get-buffer-memory-requirements
    #:get-device-group-peer-memory-features-khx
    #:get-device-group-present-capabilities-khx
    #:get-device-group-surface-present-modes-khx
    #:get-device-memory-commitment
    #:get-device-proc-addr
    #:get-device-queue
    #:get-display-mode-properties-khr
    #:get-display-plane-capabilities-khr
    #:get-display-plane-supported-displays-khr
    #:get-event-status
    #:get-fence-status
    #:get-image-memory-requirements
    #:get-image-sparse-memory-requirements
    #:get-image-subresource-layout
    #:get-instance-proc-addr
    #:get-memory-fd-khx
    #:get-memory-fd-properties-khx
    #:get-memory-win32-handle-khx
    #:get-memory-win32-handle-nv
    #:get-memory-win32-handle-properties-khx
    #:get-past-presentation-timing-google
    #:get-physical-device-display-plane-properties-khr
    #:get-physical-device-display-properties-khr
    #:get-physical-device-external-buffer-properties-khx
    #:get-physical-device-external-image-format-properties-nv
    #:get-physical-device-external-semaphore-properties-khx
    #:get-physical-device-features
    #:get-physical-device-features-2-khr
    #:get-physical-device-format-properties
    #:get-physical-device-format-properties-2-khr
    #:get-physical-device-generated-commands-properties-nvx
    #:get-physical-device-image-format-properties
    #:get-physical-device-image-format-properties-2-khr
    #:get-physical-device-memory-properties
    #:get-physical-device-memory-properties-2-khr
    #:get-physical-device-mir-presentation-support-khr
    #:get-physical-device-present-rectangles-khx
    #:get-physical-device-properties
    #:get-physical-device-properties-2-khr
    #:get-physical-device-queue-family-properties
    #:get-physical-device-queue-family-properties-2-khr
    #:get-physical-device-sparse-image-format-properties
    #:get-physical-device-sparse-image-format-properties-2-khr
    #:get-physical-device-surface-capabilities-2-ext
    #:get-physical-device-surface-capabilities-2-khr
    #:get-physical-device-surface-capabilities-khr
    #:get-physical-device-surface-formats-2-khr
    #:get-physical-device-surface-formats-khr
    #:get-physical-device-surface-present-modes-khr
    #:get-physical-device-surface-support-khr
    #:get-physical-device-wayland-presentation-support-khr
    #:get-physical-device-win32-presentation-support-khr
    #:get-physical-device-xcb-presentation-support-khr
    #:get-physical-device-xlib-presentation-support-khr
    #:get-pipeline-cache-data
    #:get-query-pool-results
    #:get-rand-r-output-display-ext
    #:get-refresh-cycle-duration-google
    #:get-render-area-granularity
    #:get-semaphore-fd-khx
    #:get-semaphore-win32-handle-khx
    #:get-swapchain-counter-ext
    #:get-swapchain-images-khr
    #:get-swapchain-status-khr
    #:import-semaphore-fd-khx
    #:import-semaphore-win32-handle-khx
    #:invalidate-mapped-memory-ranges
    #:map-memory
    #:merge-pipeline-caches
    #:queue-bind-sparse
    #:queue-present-khr
    #:queue-submit
    #:queue-wait-idle
    #:register-device-event-ext
    #:register-display-event-ext
    #:register-objects-nvx
    #:release-display-ext
    #:reset-command-buffer
    #:reset-command-pool
    #:reset-descriptor-pool
    #:reset-event
    #:reset-fences
    #:set-event
    #:set-hdr-metadata-ext
    #:trim-command-pool-khr
    #:unmap-memory
    #:unregister-objects-nvx
    #:update-descriptor-set-with-template-khr
    #:update-descriptor-sets
    #:wait-for-fences
))
