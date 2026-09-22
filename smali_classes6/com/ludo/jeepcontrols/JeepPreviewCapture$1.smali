.class Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;
.super Ljava/lang/Object;
.source "JeepPreviewCapture.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/JeepPreviewCapture;->maybeCapture(Landroid/accessibilityservice/AccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lr:Landroid/graphics/Rect;

.field final synthetic val$service:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic val$vr:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$lr:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$vr:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$service:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .line 57
    return-void
.end method

.method public onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 10

    .line 33
    nop

    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 36
    :try_start_1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 37
    if-nez p1, :cond_1

    .line 54
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 39
    if-nez p1, :cond_3

    .line 54
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 39
    :cond_2
    :goto_1
    return-void

    .line 40
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 41
    int-to-float v4, v1

    const v5, 0x3c9374bc    # 0.018f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 42
    const v6, 0x3f7b645a    # 0.982f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 43
    iget-object v6, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$lr:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    const v8, 0x3b449ba6    # 0.003f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 44
    iget-object v8, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$vr:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v8, v7

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 45
    sub-int/2addr v4, v5

    sub-int/2addr v7, v6

    .line 46
    div-int/2addr v1, v9

    if-lt v4, v1, :cond_5

    div-int/lit8 v1, v3, 0x7

    if-lt v7, v1, :cond_5

    div-int/2addr v3, v9

    if-le v7, v3, :cond_4

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {p1, v5, v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 48
    iget-object v1, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$service:Landroid/accessibilityservice/AccessibilityService;

    const-string v3, "jeep_preview_map.png"

    invoke-virtual {v1, v3, v2}, Landroid/accessibilityservice/AccessibilityService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 49
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 51
    iget-object p1, p0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;->val$service:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 54
    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 46
    :cond_6
    :goto_3
    return-void

    .line 52
    :catchall_3
    move-exception p1

    goto :goto_4

    :catchall_4
    move-exception p1

    const/4 v0, 0x0

    .line 54
    :goto_4
    if-eqz v0, :cond_7

    :try_start_8
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    .line 55
    nop

    .line 56
    :cond_7
    :goto_5
    return-void
.end method
