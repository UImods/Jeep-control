.class public final Lcom/ludo/jeepcontrols/WidgetMapHelper;
.super Ljava/lang/Object;
.source "WidgetMapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(III)Landroid/graphics/Bitmap;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/ludo/jeepcontrols/WidgetMapHelper;->fetchTile(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static draw(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 23

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p2}, Lcom/ludo/jeepcontrols/JeepPreviewMapCache;->draw(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    :try_start_0
    const-string v3, "jeep_controls_vehicle"

    const/4 v7, 0x0

    move-object/from16 v8, p0

    invoke-virtual {v8, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 102
    const-string v3, "uconnect_lat"

    invoke-interface {v9, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v4, "uconnect_lon"

    invoke-interface {v9, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 105
    :cond_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 106
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 107
    const-wide v10, 0x40554345b1a57f00L    # 85.05112878

    cmpl-double v2, v3, v10

    if-lez v2, :cond_2

    move-wide v3, v10

    .line 108
    :cond_2
    const-wide v10, -0x3faabcba4e5a8100L    # -85.05112878

    cmpg-double v2, v3, v10

    if-gez v2, :cond_3

    move-wide v3, v10

    .line 113
    :cond_3
    const-wide v10, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v5, v10

    const-wide/high16 v10, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v5, v10

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v2, v14, v2

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v12

    sub-double/2addr v14, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v2

    mul-double/2addr v14, v10

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v10, v2

    .line 117
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 118
    int-to-double v2, v10

    sub-double v12, v5, v2

    .line 119
    int-to-double v2, v11

    sub-double/2addr v14, v2

    .line 120
    add-int/lit8 v2, v10, -0x1

    .line 121
    add-int/lit8 v3, v11, -0x1

    .line 124
    const/16 v4, 0xf

    invoke-static {v4, v2, v3}, Lcom/ludo/jeepcontrols/WidgetMapHelper;->fetchNineTiles(III)[Landroid/graphics/Bitmap;

    move-result-object v16

    .line 125
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x300

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 126
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 129
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    const v6, -0x181315

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    move-object v6, v4

    const/high16 v4, 0x44400000    # 768.0f

    move-object v1, v5

    const/high16 v5, 0x44400000    # 768.0f

    move/from16 v17, v2

    const/4 v2, 0x0

    move/from16 v18, v3

    const/4 v3, 0x0

    move-object/from16 v19, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v1

    move-object v1, v6

    .line 132
    move v3, v7

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    .line 133
    move v5, v7

    :goto_1
    if-ge v5, v4, :cond_5

    .line 134
    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v5

    aget-object v6, v16, v6

    .line 135
    if-eqz v6, :cond_4

    .line 136
    new-instance v4, Landroid/graphics/Rect;

    .line 137
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v20, v10

    const/4 v10, 0x0

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    mul-int/lit16 v8, v5, 0x100

    mul-int/lit16 v10, v3, 0x100

    move/from16 v21, v3

    add-int/lit8 v3, v5, 0x1

    mul-int/lit16 v3, v3, 0x100

    move/from16 v22, v5

    add-int/lit8 v5, v21, 0x1

    mul-int/lit16 v5, v5, 0x100

    invoke-direct {v7, v8, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    invoke-virtual {v2, v6, v4, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 135
    :cond_4
    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v20, v10

    .line 133
    :goto_2
    add-int/lit8 v5, v22, 0x1

    move-object/from16 v8, p0

    move/from16 v10, v20

    move/from16 v3, v21

    const/4 v4, 0x3

    const/4 v7, 0x0

    goto :goto_1

    .line 132
    :cond_5
    move/from16 v21, v3

    move/from16 v20, v10

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v8, p0

    const/4 v7, 0x0

    goto :goto_0

    .line 143
    :cond_6
    move/from16 v20, v10

    sub-int v10, v20, v17

    int-to-double v2, v10

    add-double/2addr v2, v12

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v4

    .line 144
    sub-int v11, v11, v18

    int-to-double v6, v11

    add-double/2addr v6, v14

    mul-double/2addr v6, v4

    .line 147
    const-wide v4, 0x4073a00000000000L    # 314.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 148
    const-wide v3, 0x406d800000000000L    # 236.0

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 149
    if-gez v2, :cond_7

    const/4 v2, 0x0

    .line 150
    :cond_7
    if-gez v3, :cond_8

    const/4 v3, 0x0

    .line 151
    :cond_8
    const/16 v4, 0x8c

    if-le v2, v4, :cond_9

    move v2, v4

    .line 152
    :cond_9
    const/16 v4, 0x128

    if-le v3, v4, :cond_a

    move v3, v4

    .line 154
    :cond_a
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit16 v5, v2, 0x274

    add-int/lit16 v6, v3, 0x1d8

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x2e6

    const/16 v5, 0x55a

    const/16 v6, 0x1d8

    const/4 v10, 0x0

    invoke-direct {v2, v3, v10, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v6, v19

    invoke-virtual {v0, v6, v4, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    const v2, -0x7070c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    const/high16 v3, 0x42140000    # 37.0f

    const/high16 v4, 0x433d0000    # 189.0f

    const/high16 v5, 0x44840000    # 1056.0f

    invoke-virtual {v0, v5, v4, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    const v6, 0x40866666    # 4.2f

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    const/16 v6, -0x3bd9

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {v0, v5, v4, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 173
    const v4, 0x44826000    # 1043.0f

    const/high16 v7, 0x435c0000    # 220.0f

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    const v4, 0x4485a000    # 1069.0f

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    const/high16 v4, 0x43600000    # 224.0f

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 177
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    const v2, 0x404ccccd    # 3.2f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x436c0000    # 236.0f

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    const v2, -0xd2820c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 192
    const-string v3, "notif_jeep_vehicle"

    const-string v4, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 193
    if-eqz v3, :cond_b

    .line 194
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_b

    .line 196
    new-instance v3, Landroid/graphics/Rect;

    .line 197
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v10, 0x0

    invoke-direct {v3, v10, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x43c

    const/16 v6, 0xca

    const/16 v7, 0x404

    const/16 v8, 0xae

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    :cond_b
    const-string v2, "updated_at"

    const-wide/16 v3, 0x0

    invoke-interface {v9, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 203
    const-string v2, "Updated \u00b7 \u2014"

    .line 204
    cmp-long v3, v5, v3

    if-lez v3, :cond_c

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "h:mm a"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    .line 204
    :cond_c
    move-object v8, v2

    .line 209
    :goto_3
    const-string v2, "LOCATION MAP"

    const/high16 v6, 0x42680000    # 58.0f

    const/high16 v7, 0x41b00000    # 22.0f

    const v3, 0x44408000    # 770.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x44760000    # 984.0f

    invoke-static/range {v0 .. v7}, Lcom/ludo/jeepcontrols/WidgetMapHelper;->drawOverlay(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V

    .line 210
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, -0x343434

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, 0x431e0000    # 158.0f

    const/high16 v3, 0x43090000    # 137.0f

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    goto :goto_5

    .line 104
    :cond_d
    :goto_4
    return-void

    .line 216
    :catchall_0
    move-exception v0

    .line 218
    :goto_5
    return-void
.end method

.method private static drawOverlay(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFFF)V
    .locals 5

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    const v0, -0x61dfd8dc

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    const v0, 0x45ffffff    # 8191.9995f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3f333333    # 0.7f

    add-float v2, p3, v1

    add-float v3, p4, v1

    sub-float v4, p5, v1

    sub-float v1, p6, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    const v0, -0x7070b

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 95
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    add-float/2addr p3, p5

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float/2addr p3, p5

    sub-float/2addr p6, p4

    const p5, 0x3f2e147b    # 0.68f

    mul-float/2addr p6, p5

    add-float/2addr p4, p6

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method private static fetchNineTiles(III)[Landroid/graphics/Bitmap;
    .locals 13

    .line 63
    const/16 v1, 0x9

    new-array v6, v1, [Landroid/graphics/Bitmap;

    .line 64
    new-array v8, v1, [Ljava/lang/Thread;

    .line 65
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 66
    move v11, v0

    :goto_1
    if-ge v11, v10, :cond_0

    .line 67
    mul-int/lit8 v2, v9, 0x3

    add-int v7, v2, v11

    .line 68
    new-instance v12, Ljava/lang/Thread;

    new-instance v2, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;

    add-int v4, p1, v11

    add-int v5, p2, v9

    move v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;-><init>(III[Landroid/graphics/Bitmap;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JeepMapTile-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v12, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    aput-object v12, v8, v7

    .line 69
    aget-object p0, v8, v7

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 66
    add-int/lit8 v11, v11, 0x1

    move p0, v3

    goto :goto_1

    .line 65
    :cond_0
    move v3, p0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v2, 0x10cc

    add-long/2addr p0, v2

    .line 73
    move p2, v0

    :goto_2
    if-ge p2, v1, :cond_3

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, p0, v2

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    goto :goto_4

    .line 76
    :cond_2
    :try_start_0
    aget-object v0, v8, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 73
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 78
    :cond_3
    :goto_4
    return-object v6
.end method

.method private static fetchTile(III)Landroid/graphics/Bitmap;
    .locals 6

    .line 24
    const-string v0, "/"

    .line 25
    nop

    .line 27
    const/4 v1, 0x1

    shl-int v2, v1, p0

    .line 28
    const/4 v3, 0x0

    :try_start_0
    rem-int/2addr p1, v2

    add-int/2addr p1, v2

    rem-int/2addr p1, v2

    .line 29
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 30
    :cond_0
    if-lt p2, v2, :cond_1

    add-int/lit8 p2, v2, -0x1

    .line 31
    :cond_1
    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://tile.openstreetmap.org/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 33
    const/16 p1, 0xa28

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    const/16 p1, 0xc80

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    const-string p1, "User-Agent"

    const-string p2, "JEEPControls/1.57.36 (Android widget map)"

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string p1, "Accept"

    const-string p2, "image/png,image/*;q=0.8,*/*;q=0.5"

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 38
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 39
    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 44
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 39
    :cond_3
    :goto_1
    return-object p2

    .line 40
    :catchall_2
    move-exception p2

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object p1, v3

    goto :goto_2

    :catchall_4
    move-exception p0

    move-object p0, v3

    move-object p1, p0

    .line 41
    :goto_2
    nop

    .line 43
    if-eqz p1, :cond_4

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    .line 44
    :cond_4
    :goto_3
    if-eqz p0, :cond_5

    :try_start_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception p0

    .line 41
    :cond_5
    :goto_4
    return-object v3
.end method
