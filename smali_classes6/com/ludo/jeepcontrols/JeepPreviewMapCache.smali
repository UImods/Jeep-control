.class public final Lcom/ludo/jeepcontrols/JeepPreviewMapCache;
.super Ljava/lang/Object;
.source "JeepPreviewMapCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 11

    .line 20
    nop

    .line 22
    const/4 v4, 0x0

    :try_start_0
    const-string v0, "jeep_preview_map.png"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 26
    if-nez v4, :cond_1

    .line 28
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "jeep_preview_seed"

    const-string v6, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    .line 30
    :cond_0
    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 32
    :cond_1
    :goto_2
    const/4 v10, 0x0

    if-nez v4, :cond_2

    return v10

    .line 34
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 38
    nop

    .line 39
    int-to-float v7, v5

    const v8, 0x3faa4e1a

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 40
    if-le v7, v6, :cond_3

    int-to-float v7, v6

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v7

    move v7, v5

    .line 41
    :goto_3
    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 42
    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 43
    new-instance v9, Landroid/graphics/Rect;

    add-int/2addr v7, v5

    add-int/2addr v8, v6

    invoke-direct {v9, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x55a

    const/16 v7, 0x1d8

    const/16 v8, 0x2e6

    invoke-direct {v5, v8, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v9, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    const-string v4, "LOCATION MAP"

    const/high16 v8, 0x42680000    # 58.0f

    const/high16 v9, 0x41b00000    # 22.0f

    const v5, 0x44408000    # 770.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x44760000    # 984.0f

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v9}, Lcom/ludo/jeepcontrols/JeepPreviewMapCache;->drawOverlay(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 45
    const-string v4, "jeep_controls_vehicle"

    invoke-virtual {p0, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    const-string v4, "updated_at"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 47
    const-string v1, "Updated \u00b7 \u2014"

    .line 48
    cmp-long v4, v7, v5

    if-lez v4, :cond_4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "h:mm a"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_4
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    const v4, -0x343435

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 53
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    const/high16 v4, 0x431e0000    # 158.0f

    const/high16 v5, 0x43090000    # 137.0f

    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    return v0

    .line 56
    :catchall_2
    move-exception v0

    return v10
.end method

.method private static drawOverlay(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V
    .locals 6

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x61dfdbd8

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 62
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x45ffffff    # 8191.9995f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x3f333333    # 0.7f

    add-float v3, p3, v2

    add-float v4, p4, v2

    sub-float v5, p5, v2

    sub-float v2, p6, v2

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 64
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    add-float/2addr p3, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    sub-float/2addr p6, p4

    const p5, 0x3f2e147b    # 0.68f

    mul-float/2addr p6, p5

    add-float/2addr p4, p6

    .line 66
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 68
    return-void
.end method
