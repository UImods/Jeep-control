.class public final Lcom/ludo/jeepcontrols/ParkedAnchorSanity208;
.super Ljava/lang/Object;
.source "ParkedAnchorSanity208.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 16

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    move-object/from16 v15, p0

    :try_start_0
    const-string v1, "jeep_controls_vehicle"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_4

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_4

    const-string v1, "park_session_id"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    const-string v1, "park_anchor_session_id"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-string v1, "park_anchor_lat"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "park_anchor_lon"

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "JC/Anchor208"

    const-string v2, "reject=FIXED_SAME_SESSION_ANCHOR_EXISTS"

    invoke-static {v1, v2}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "phone_loc_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const-string v1, "parked_session_started_ms"

    const-wide/16 v12, 0x0

    invoke-interface {v3, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v8, 0x0

    cmp-long v1, v12, v8

    if-lez v1, :cond_4

    sub-long v8, v6, v12

    const-wide/16 v12, -0x1388

    cmp-long v1, v8, v12

    if-ltz v1, :cond_4

    const-wide/16 v12, 0x7530

    cmp-long v1, v8, v12

    if-gtz v1, :cond_4

    const-string v1, "phone_loc_source"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fused"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sub-long v8, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-ltz v1, :cond_4

    const-wide/16 v6, 0x7530

    cmp-long v1, v8, v6

    if-gtz v1, :cond_4

    const-string v1, "phone_accuracy_m"

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const/4 v1, 0x0

    cmpl-float v2, v10, v1

    if-lez v2, :cond_4

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v2, v10, v1

    if-gtz v2, :cond_4

    const-string v1, "phone_lat"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "phone_lon"

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v11, Landroid/location/Location;

    const-string v1, "phone_validator_207"

    invoke-direct {v11, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    new-instance v14, Landroid/location/Location;

    const-string v1, "uconnect_candidate_207"

    invoke-direct {v14, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v11, v14}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v15

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v10, v10, v1

    cmpl-float v1, v10, v2

    if-lez v1, :cond_1

    move v2, v10

    :cond_1
    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v8, v2, v1

    if-lez v8, :cond_2

    move v2, v1

    :cond_2
    cmpl-float v1, v15, v2

    if-lez v1, :cond_3

    const-string v1, "JC/Anchor208"

    const-string v2, "reject=UCONNECT_DISAGREES_WITH_FRESH_PHONE_FIX"

    invoke-static {v1, v2}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    return v0
.end method
