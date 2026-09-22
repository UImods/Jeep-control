.class public final Lcom/ludo/jeepcontrols/JeepPreviewCapture;
.super Ljava/lang/Object;
.source "JeepPreviewCapture.java"


# static fields
.field private static lastCaptureMs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 63
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 70
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 71
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/ludo/jeepcontrols/JeepPreviewCapture;->find(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_3

    return-object v3

    .line 70
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_4
    return-object v0
.end method

.method public static maybeCapture(Landroid/accessibilityservice/AccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 18
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 20
    sget-wide v2, Lcom/ludo/jeepcontrols/JeepPreviewCapture;->lastCaptureMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 21
    :cond_1
    const-string v2, "locations"

    invoke-static {p1, v2}, Lcom/ludo/jeepcontrols/JeepPreviewCapture;->find(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 22
    const-string v3, "vehicle location"

    invoke-static {p1, v3}, Lcom/ludo/jeepcontrols/JeepPreviewCapture;->find(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 23
    if-eqz v2, :cond_5

    if-nez p1, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 25
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_4

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-gt p1, v2, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    sput-wide v0, Lcom/ludo/jeepcontrols/JeepPreviewCapture;->lastCaptureMs:J

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;

    invoke-direct {v0, v3, v4, p0}, Lcom/ludo/jeepcontrols/JeepPreviewCapture$1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/accessibilityservice/AccessibilityService;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/accessibilityservice/AccessibilityService;->takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 60
    return-void

    .line 28
    :cond_4
    :goto_1
    return-void

    .line 23
    :cond_5
    :goto_2
    return-void

    .line 18
    :cond_6
    :goto_3
    return-void
.end method
