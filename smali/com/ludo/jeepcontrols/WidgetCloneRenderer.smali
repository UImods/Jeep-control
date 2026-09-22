.class public final Lcom/ludo/jeepcontrols/WidgetCloneRenderer;
.super Ljava/lang/Object;
.source "WidgetCloneRenderer.java"


# direct methods
.method private static compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "N/A"

    return-object v0

    :cond_0
    const-string v0, "Unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "N/A"

    return-object v0

    :cond_1
    const-string v0, "Refresh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "tap Refresh Status"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "N/A"

    return-object v0

    :cond_3
    return-object p0
.end method

.method private static compactTires(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    const-string v0, " PSI"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " \u2022 "

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static drawTireGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/16 v3, 0x3fc

    const/16 v4, 0x430

    const/16 v5, 0x154

    const/16 v6, 0x176

    goto :goto_0

    :cond_0
    const/16 v3, 0x2a8

    const/16 v4, 0x2da

    const/16 v5, 0x1ae

    const/16 v6, 0x1ce

    :goto_0
    const/16 v1, 0x1a

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    int-to-float v7, v3

    int-to-float v8, v5

    invoke-virtual {p0, v1, v7, v8, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    int-to-float v7, v4

    invoke-virtual {p0, v1, v7, v8, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    int-to-float v7, v3

    int-to-float v8, v6

    invoke-virtual {p0, v1, v7, v8, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    int-to-float v7, v4

    invoke-virtual {p0, v0, v7, v8, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/16 v0, 0x18

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const/16 v1, 0x418

    const/16 v2, 0x165

    goto :goto_1

    :cond_2
    const/16 v1, 0x2c0

    const/16 v2, 0x1bf

    :goto_1
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p0, p2, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static drawTireStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v1, 0x45a

    const/16 v2, 0x165

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/16 v1, 0x302

    const/16 v2, 0x1bf

    goto :goto_0

    :cond_1
    const/16 v1, 0x33e

    const/16 v2, 0x224

    :goto_0
    if-eqz p3, :cond_2

    const v0, -0x1ac6cb

    const-string v3, "!"

    goto :goto_1

    :cond_2
    const v0, -0xbc5fb9

    const-string v3, "\u2713"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v1

    int-to-float v4, v2

    const/16 v1, 0x18

    int-to-float v1, v1

    invoke-virtual {p0, v0, v4, v1, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x1a

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    add-int/lit8 v2, v2, 0x9

    int-to-float v1, v2

    invoke-virtual {p0, v3, v0, v1, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static render(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 13

    const v0, 0x7f03000b

    if-ne p1, v0, :cond_0

    const-string v0, "widget_style_1_surgical_clone3x1"

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f03000c

    if-ne p1, v0, :cond_1

    const-string v0, "widget_style_2_surgical_clone3x1"

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x7f03000f

    if-ne p1, v0, :cond_2

    const-string v0, "widget_style_5_surgical_clone3x1"

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v3, "jeep_controls_vehicle"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fuel"

    const-string v5, "N/A"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oil_life"

    const-string v6, "N/A"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tires"

    const-string v7, "N/A"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->compactTires(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tire_warning"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    const-string v8, "sans-serif-medium"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v8, 0x1

    if-ne v1, v8, :cond_6

    const/16 v8, 0x20

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v8, 0x282

    int-to-float v8, v8

    const/16 v9, 0x163

    int-to-float v9, v9

    invoke-virtual {v2, v4, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v8, 0x352

    int-to-float v8, v8

    const/16 v9, 0x163

    int-to-float v9, v9

    invoke-virtual {v2, v5, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x1

    invoke-static {v2, v7, v6, v8}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->drawTireGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;I)V

    invoke-static {v2, v7, v8, v12}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->drawTireStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V

    const-string v8, "updated_at"

    const-wide/16 v9, 0x0

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v8, v9, v11

    if-lez v8, :cond_5

    const-string v8, "h:mm a"

    invoke-static {v8, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string v8, "Updated \u2014"

    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v9, 0x16

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    const v9, -0x63594b

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v9, 0x1d3

    int-to-float v9, v9

    const/16 v10, 0x8a

    int-to-float v10, v10

    invoke-virtual {v2, v8, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    const/4 v8, 0x2

    if-ne v1, v8, :cond_7

    const/16 v8, 0x1f

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v8, 0xc3

    int-to-float v8, v8

    const/16 v9, 0x1bc

    int-to-float v9, v9

    invoke-virtual {v2, v4, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v8, 0x1b9

    int-to-float v8, v8

    const/16 v9, 0x1bc

    int-to-float v9, v9

    invoke-virtual {v2, v5, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x2

    invoke-static {v2, v7, v6, v8}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->drawTireGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;I)V

    invoke-static {v2, v7, v8, v12}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->drawTireStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V

    goto :goto_2

    :cond_7
    const/16 v8, 0x26

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const v8, -0x161926

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v8, 0xee

    int-to-float v8, v8

    const/16 v9, 0x224

    int-to-float v9, v9

    invoke-virtual {v2, v4, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v8, 0x236

    int-to-float v8, v8

    const/16 v9, 0x224

    int-to-float v9, v9

    invoke-virtual {v2, v5, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v8, -0x161926

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v8, 0x20

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v8, 0x3d4

    int-to-float v8, v8

    const/16 v9, 0x224

    int-to-float v9, v9

    invoke-virtual {v2, v6, v8, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x5

    invoke-static {v2, v7, v8, v12}, Lcom/ludo/jeepcontrols/WidgetCloneRenderer;->drawTireStatus(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V

    :goto_2
    return-object v0
.end method
