.class public final Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;
.super Ljava/lang/Object;
.source "WidgetCloneRendererV579.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clipWidget4ToRoundedOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b80000    # 92.0f

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v0

    return-void
.end method

.method private static compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Refresh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tap Refresh Status"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const-string p0, "N/A"

    return-object p0
.end method

.method private static compactTires(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {p0}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    const-string v0, "FL "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FR "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RL "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RR "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 31
    const-string v0, " PSI"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " \u2022 "

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static drawFlatBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFII)V
    .locals 3

    .line 81
    const v0, -0xcbc4bd

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    sub-float v1, p5, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 84
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 85
    if-lez p6, :cond_0

    .line 86
    sub-float/2addr p4, p2

    int-to-float p6, p6

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p6, v0

    mul-float/2addr p4, p6

    add-float/2addr p4, p2

    .line 87
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance p6, Landroid/graphics/RectF;

    add-float p7, p2, v1

    invoke-static {p7, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-direct {p6, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p6, v1, v1, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    :cond_0
    return-void
.end method

.method private static drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V
    .locals 3

    .line 65
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    const/4 p7, 0x1

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 69
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 71
    const/4 p2, 0x0

    aget-object p2, v0, p2

    invoke-virtual {p0, p2, p3, p5, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    aget-object p2, v0, p7

    invoke-virtual {p0, p2, p4, p5, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    const/4 p2, 0x2

    aget-object p2, v0, p2

    invoke-virtual {p0, p2, p3, p6, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    const/4 p2, 0x3

    aget-object p2, v0, p2

    invoke-virtual {p0, p2, p4, p6, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 76
    :cond_0
    add-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    add-float/2addr p5, p6

    div-float/2addr p5, p4

    invoke-virtual {p0, p2, p3, p5, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    :goto_0
    return-void
.end method

.method private static drawLiveOsmMap(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ludo/jeepcontrols/WidgetMapHelper;->draw(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V
    .locals 1

    .line 55
    if-eqz p5, :cond_0

    const v0, -0x1ac6cb

    goto :goto_0

    :cond_0
    const v0, -0xd0409e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, p4

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 60
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    if-eqz p5, :cond_1

    const-string p5, "!"

    goto :goto_1

    :cond_1
    const-string p5, "\u2713"

    :goto_1
    const v0, 0x3ec28f5c    # 0.38f

    mul-float/2addr p4, v0

    add-float/2addr p3, p4

    invoke-virtual {p0, p5, p2, p3, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method

.method private static drawStyle2OilRing(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->parsePercent(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v2, -0xbfbfc8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x43a18000    # 323.0f

    const/high16 v4, 0x43cf0000    # 414.0f

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-lez v0, :cond_0

    const v2, -0x4cb9c2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/RectF;

    sub-float v6, v3, v5

    sub-float v7, v4, v5

    add-float/2addr v3, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v6, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v3, -0x3d4c0000    # -90.0f

    int-to-float v0, v0

    const v4, 0x40666666    # 3.6f

    mul-float/2addr v0, v4

    move-object v4, p0

    move-object v5, v2

    move v6, v3

    move v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private static paint(FIZ)Landroid/graphics/Paint;
    .locals 2

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    const-string v1, "sans-serif-medium"

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 48
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    return-object v0
.end method

.method private static parsePercent(Ljava/lang/String;)I
    .locals 4

    .line 35
    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 37
    :cond_0
    :try_start_0
    const-string v2, "%"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "[^0-9.]"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p0, v2

    .line 40
    const/16 v0, 0x64

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 41
    :catchall_0
    move-exception p0

    return v1
.end method

.method public static render(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 22

    .line 152
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string v4, "widget_style1_3x1"

    const-string v5, "layout"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 155
    const-string v6, "widget_style2_3x1"

    invoke-virtual {v2, v6, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 156
    const-string v7, "widget_style3_3x1"

    invoke-virtual {v2, v7, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 157
    const-string v8, "widget_style4_3x1"

    invoke-virtual {v2, v8, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 158
    const-string v9, "widget_style5_3x1"

    invoke-virtual {v2, v9, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 161
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v1, v4, :cond_0

    const-string v1, "widget_style_1_surgical_clone3x1"

    move v4, v13

    goto :goto_0

    .line 162
    :cond_0
    if-ne v1, v6, :cond_1

    const-string v1, "widget_style_2_surgical_clone3x1"

    move v4, v11

    goto :goto_0

    .line 163
    :cond_1
    if-ne v1, v7, :cond_2

    const-string v1, "widget_style_3_card3x1"

    move v4, v10

    goto :goto_0

    .line 164
    :cond_2
    if-ne v1, v8, :cond_3

    const-string v1, "widget_style_4_card3x1"

    move v4, v9

    goto :goto_0

    .line 165
    :cond_3
    if-ne v1, v5, :cond_b

    const-string v1, "widget_style_5_surgical_clone3x1"

    const/4 v4, 0x5

    .line 168
    :goto_0
    const-string v5, "drawable"

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 169
    if-nez v1, :cond_4

    return-object v12

    .line 170
    :cond_4
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    if-nez v1, :cond_5

    return-object v12

    .line 172
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-ne v4, v9, :cond_6

    invoke-static {v14, v1}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->clipWidget4ToRoundedOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 175
    :cond_6
    const-string v2, "jeep_controls_vehicle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    const-string v5, "fuel"

    const-string v6, "N/A"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string v7, "oil_life"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    const-string v8, "tires"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->compactTires(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 179
    const-string v6, "tire_warning"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 180
    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v6, -0x1

    invoke-static {v3, v6, v13}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->paint(FIZ)Landroid/graphics/Paint;

    move-result-object v15

    .line 182
    if-ne v4, v13, :cond_7

    .line 183
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    const v0, 0x44208000    # 642.0f

    const v3, 0x43b18000    # 355.0f

    invoke-virtual {v14, v5, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    const v0, 0x44548000    # 850.0f

    invoke-virtual {v14, v7, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    const/high16 v20, 0x43bb0000    # 374.0f

    const/high16 v21, 0x41d00000    # 26.0f

    const v17, 0x447e8000    # 1018.0f

    const v18, 0x44858000    # 1068.0f

    const/high16 v19, 0x43aa0000    # 340.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 187
    const v17, 0x43b28000    # 357.0f

    const/high16 v18, 0x41c00000    # 24.0f

    const v16, 0x448b6000    # 1115.0f

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V

    goto/16 :goto_1

    .line 188
    :cond_7
    const/high16 v3, 0x41f80000    # 31.0f

    if-ne v4, v11, :cond_8

    invoke-static {v14, v7}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStyle2OilRing(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    const/high16 v0, 0x43430000    # 195.0f

    const/high16 v3, 0x43de0000    # 444.0f

    invoke-virtual {v14, v5, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    const v0, 0x43d68000    # 429.0f

    invoke-virtual {v14, v7, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    const/high16 v20, 0x43ea0000    # 468.0f

    const/high16 v21, 0x41a80000    # 21.0f

    const/high16 v17, 0x442c0000    # 688.0f

    const/high16 v18, 0x44360000    # 728.0f

    const/high16 v19, 0x43dc0000    # 440.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 194
    const/high16 v17, 0x43e30000    # 454.0f

    const/high16 v18, 0x41a80000    # 21.0f

    const v16, 0x44418000    # 774.0f

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V

    goto/16 :goto_1

    .line 195
    :cond_8
    const/high16 v8, 0x42080000    # 34.0f

    if-ne v4, v10, :cond_9

    .line 196
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    const/high16 v0, 0x43640000    # 228.0f

    const/high16 v3, 0x43bb0000    # 374.0f

    invoke-virtual {v14, v5, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    const/high16 v0, 0x43e70000    # 462.0f

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-virtual {v14, v7, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    const/high16 v20, 0x43c70000    # 398.0f

    const/high16 v21, 0x41a80000    # 21.0f

    const/high16 v17, 0x44370000    # 732.0f

    const/high16 v18, 0x44420000    # 776.0f

    const/high16 v19, 0x43b80000    # 368.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 200
    const v17, 0x43bf8000    # 383.0f

    const/high16 v18, 0x41a00000    # 20.0f

    const v16, 0x444dc000    # 823.0f

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V

    goto/16 :goto_1

    .line 201
    :cond_9
    if-ne v4, v9, :cond_a

    .line 202
    invoke-static {v0, v14, v15}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawLiveOsmMap(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 203
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    const/high16 v0, 0x43170000    # 151.0f

    const v3, 0x43d28000    # 421.0f

    invoke-virtual {v14, v5, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 205
    const v0, 0x43ba8000    # 373.0f

    const/high16 v3, 0x43ca0000    # 404.0f

    invoke-virtual {v14, v7, v0, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    const/high16 v20, 0x43d40000    # 424.0f

    const/high16 v21, 0x41b00000    # 22.0f

    const v17, 0x44124000    # 585.0f

    const/high16 v18, 0x441d0000    # 628.0f

    const v19, 0x43c58000    # 395.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 208
    const/high16 v17, 0x43cd0000    # 410.0f

    const/high16 v18, 0x41a00000    # 20.0f

    const v16, 0x4428c000    # 675.0f

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V

    goto :goto_1

    .line 210
    :cond_a
    move-object/from16 v0, v16

    const v3, -0x161924

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    const/high16 v4, 0x436e0000    # 238.0f

    const v6, 0x4405c000    # 535.0f

    invoke-virtual {v14, v5, v4, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    const v4, 0x440d4000    # 565.0f

    invoke-virtual {v14, v7, v4, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    invoke-static {v5}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->parsePercent(Ljava/lang/String;)I

    move-result v20

    const v21, -0x9060c1

    const/high16 v16, 0x43370000    # 183.0f

    const v17, 0x4409c000    # 551.0f

    const v18, 0x43a88000    # 337.0f

    const v19, 0x440c8000    # 562.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawFlatBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFII)V

    .line 215
    invoke-static {v7}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->parsePercent(Ljava/lang/String;)I

    move-result v20

    const v21, -0x27c4ce

    const v16, 0x4403c000    # 527.0f

    const/high16 v18, 0x442b0000    # 684.0f

    invoke-static/range {v14 .. v21}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawFlatBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFII)V

    .line 216
    const/high16 v4, 0x41e80000    # 29.0f

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 217
    const v3, 0x44764000    # 985.0f

    invoke-virtual {v14, v0, v3, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 218
    const/high16 v17, 0x44080000    # 544.0f

    const/high16 v18, 0x41b00000    # 22.0f

    const/high16 v16, 0x44550000    # 852.0f

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->drawStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZ)V

    .line 220
    :goto_1
    return-object v1

    .line 166
    :cond_b
    return-object v12
.end method
