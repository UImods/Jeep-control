.class public final Lcom/ludo/jeepcontrols/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "jeep_controls_persistent"

.field private static final NOTIFICATION_ID:I = 0x966


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anyTireBelow35(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "[^0-9.]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    const/high16 v5, 0x420c0000    # 35.0f

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V
    .locals 8

    const-string v0, "doors"

    const-string v1, "Unavailable"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unavailable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "last_command_doors"

    const-string v2, "Unavailable"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "DISARMED"

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, -0xf4dc6

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v2, "notif_armed_icon"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notif_shield_amber"

    const-string v4, "drawable"

    invoke-static {p0, v3, v4}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void

    :cond_2
    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "ARMED"

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, -0xca228b

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v2, "notif_armed_icon"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ic_notif_shield_green"

    const-string v4, "drawable"

    invoke-static {p0, v3, v4}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_3
    return-void
.end method

.method private static applyConnectionIcons(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;)V
    .locals 5

    const-string v0, "id"

    const-string v1, "notif_uconnect_connection_icon"

    invoke-static {p0, v1, v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "uconnect_connection_state"

    const-string v3, "connecting"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connected"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ic_notif_uconnect_connected_user"

    goto :goto_0

    :cond_0
    const-string v2, "ic_notif_uconnect_connecting_user"

    :goto_0
    const-string v3, "drawable"

    invoke-static {p0, v2, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_1
    const-string v1, "notif_obdlink_connection_icon"

    invoke-static {p0, v1, v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "obd_connected"

    const/4 v4, 0x0

    invoke-interface {p2, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ic_notif_obdlink_connected_user"

    goto :goto_1

    :cond_2
    const-string v2, "ic_notif_obdlink_connecting_user"

    :goto_1
    const-string v3, "drawable"

    invoke-static {p0, v2, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_3
    return-void
.end method

.method private static applyParkedDirections(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 10

    const-string v0, "notif_directions"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/ParkedAnchorTrust209;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "jeep_controls_vehicle"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v3, "park_anchor_lat"

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "park_anchor_lon"

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleDisplayState;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v3, "Parked"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v3, "com.ludo.jeepcontrols.PARKED_DIRECTIONS"

    const/16 v4, 0x451

    invoke-static {p0, v3, v4}, Lcom/ludo/jeepcontrols/NotificationHelper;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static buildCollapsed(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/widget/RemoteViews;
    .locals 14

    const-string v0, "notification_collapsed_status"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-direct {v2, v1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->applyToRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p0, v2, p1}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyConnectionIcons(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;)V

    const-string v3, "id"

    const-string v7, "uconnect_range"

    const-string v8, "\u2014"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "notif_fuel_value"

    invoke-static {p0, v8, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v0, "notif_status_icon"

    invoke-static {p0, v0, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v0, "notif_status_text"

    invoke-static {p0, v0, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v0, "notif_status_armed"

    invoke-static {p0, v0, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v7, "tires"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->anyTireBelow35(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ic_notif_oem_tires"

    const-string v9, "drawable"

    invoke-static {p0, v8, v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v8, "Tire Needs Air"

    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v2, p1, v6}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_0

    :cond_1
    const-string v7, "oil_life"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->numericValue(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v9, v7, v8

    if-gtz v9, :cond_2

    const-string v8, "ic_notif_oem_oil_filled"

    const-string v9, "drawable"

    invoke-static {p0, v8, v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v8, "Needs Oil"

    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v2, p1, v6}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_0

    :cond_2
    const-string v7, "fuel"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->numericValue(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x41c80000    # 25.0f

    cmpg-float v9, v7, v8

    if-gtz v9, :cond_3

    const-string v8, "ic_notif_oem_fuel"

    const-string v9, "drawable"

    invoke-static {p0, v8, v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v8, "Needs Fuel"

    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v2, p1, v6}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_0

    :cond_3
    const-string v7, "doors"

    const-string v8, "Unavailable"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unavailable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v8, "Refresh"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const-string v8, "last_command_doors"

    const-string v9, "Unavailable"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "unlock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "ic_notif_oem_unlock"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Doors Unlocked"

    invoke-virtual {v2, v5, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "DISARMED"

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, -0xf4dc6

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v9, "notif_armed_icon"

    const-string v10, "id"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ic_notif_shield_amber"

    const-string v11, "drawable"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_6
    const-string v9, "lock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "ic_notif_oem_lock"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Doors Locked"

    invoke-virtual {v2, v5, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "ARMED"

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, -0xca228b

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v9, "notif_armed_icon"

    const-string v10, "id"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ic_notif_shield_green"

    const-string v11, "drawable"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleDisplayState;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v10, "distance_notif_ft"

    const/4 v11, -0x1

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ft"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_7
    const-string v10, "notif_parked_icon"

    const-string v11, "id"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v13, "D On the road"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "D"

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v11, "drive_speed_mph_raw"

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "On the road \u2022 "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mph"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_8
    const-string v11, "R Reverse"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "R"

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v9, "Reverse"

    goto :goto_1

    :cond_9
    const-string v11, "N Neutral"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "N"

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v9, "Neutral"

    goto :goto_1

    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "P"

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    const-string v10, "notif_parked_distance"

    const-string v11, "id"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "Parked "

    const-string v12, "Parked \u2022 "

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ludo/jeepcontrols/ParkedDisplayText;->render(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_b
    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyParkedDirections(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-object v2

    :cond_c
    const-string v9, "ic_notif_oem_lock"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Vehicle Status Unavailable"

    invoke-virtual {v2, v5, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyParkedDirections(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-object v2
.end method

.method private static compactTires(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "\u2014"

    return-object p0

    :cond_0
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

.method private static getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static numericValue(Ljava/lang/String;)F
    .locals 3

    const v0, 0x4479c000    # 999.0f

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "[^0-9.]+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method private static pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "com.ludo.jeepcontrols.LOCK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ludo.jeepcontrols.UNLOCK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ludo.jeepcontrols.CLIMATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ludo.jeepcontrols.LOCATION_MAP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ludo.jeepcontrols.PARKED_DIRECTIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ludo/jeepcontrols/NotificationActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ludo/jeepcontrols/CommandReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static postBase(Landroid/content/Context;)V
    .locals 9

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ludo/jeepcontrols/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    const/16 v3, 0x615

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ludo/jeepcontrols/NotificationDismissReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.ludo.jeepcontrols.NOTIFICATION_DISMISSED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x616

    invoke-static {p0, v4, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "jeep_controls_persistent"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "ic_notification_jeep_minimal"

    const-string v6, "drawable"

    invoke-static {p0, v5, v6}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "JEEP Controls"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "2026 Wrangler 4-Door \u2022 Controls & status"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/16 v5, 0x966

    invoke-virtual {v0, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/16 v4, 0x966

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 15

    :try_start_0
    const-string v0, "JC/NotificationRender"

    const-string v1, "event=UPDATE"

    invoke-static {v0, v1}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationChannel;

    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "jeep_controls_persistent"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "jeep_controls_persistent"

    const-string v3, "JEEP Controls"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "Vehicle controls and status"

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    const-string v1, "notification_6x1_expanded"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, v2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->applyToRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const-string v1, "notif_badge"

    invoke-static {p0, v3, v1}, Lcom/ludo/jeepcontrols/BadgeManager;->applyToRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    const-string v4, "jeep_controls_vehicle"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyConnectionIcons(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;)V

    const-string v7, "id"

    const-string v5, "notif_exp_status_icon"

    invoke-static {p0, v5, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "notif_exp_status_text"

    invoke-static {p0, v6, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v8, "notif_exp_status_armed"

    invoke-static {p0, v8, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "tires"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->anyTireBelow35(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v9, "ic_notif_oem_tires"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Tire Needs Air"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v3, v4, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_1

    :cond_3
    const-string v9, "oil_life"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->numericValue(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    cmpg-float v11, v9, v10

    if-gtz v11, :cond_4

    const-string v9, "ic_notif_oem_oil_filled"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Needs Oil"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v3, v4, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_1

    :cond_4
    const-string v9, "fuel"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ludo/jeepcontrols/NotificationHelper;->numericValue(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x41c80000    # 25.0f

    cmpg-float v11, v9, v10

    if-gtz v11, :cond_5

    const-string v9, "ic_notif_oem_fuel"

    const-string v10, "drawable"

    invoke-static {p0, v9, v10}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Needs Fuel"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, v3, v4, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyArmedState(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;I)V

    goto/16 :goto_1

    :cond_5
    const-string v9, "doors"

    const-string v10, "Unavailable"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unavailable"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v10, "Refresh"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const-string v10, "last_command_doors"

    const-string v11, "Unavailable"

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_7
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "unlock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v9, "ic_notif_oem_unlock"

    const-string v11, "drawable"

    invoke-static {p0, v9, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Doors Unlocked"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "DISARMED"

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, -0xf4dc6

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v9, "notif_armed_icon"

    const-string v11, "id"

    invoke-static {p0, v9, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v11, "ic_notif_shield_amber"

    const-string v12, "drawable"

    invoke-static {p0, v11, v12}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v9, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_8
    const-string v9, "lock"

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "ic_notif_oem_lock"

    const-string v11, "drawable"

    invoke-static {p0, v9, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Doors Locked"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "ARMED"

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, -0xca228b

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v9, "notif_armed_icon"

    const-string v11, "id"

    invoke-static {p0, v9, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v11, "ic_notif_shield_green"

    const-string v12, "drawable"

    invoke-static {p0, v11, v12}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v9, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleDisplayState;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v10, "distance_notif_ft"

    const/4 v11, -0x1

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ft"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_9
    const-string v10, "notif_parked_icon"

    const-string v11, "id"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v12, "D On the road"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "D"

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v11, "drive_speed_mph_raw"

    const/4 v12, 0x0

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "On the road \u2022 "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mph"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_a
    const-string v11, "R Reverse"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "R"

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v9, "Reverse"

    goto :goto_2

    :cond_b
    const-string v11, "N Neutral"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "N"

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v9, "Neutral"

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "P"

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    const-string v10, "notif_parked_distance"

    const-string v11, "id"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v11, "Parked "

    const-string v12, "Parked \u2022 "

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ludo/jeepcontrols/ParkedDisplayText;->render(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_d
    goto :goto_3

    :cond_e
    const-string v9, "ic_notif_oem_lock"

    const-string v11, "drawable"

    invoke-static {p0, v9, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v9, "Status Unavailable"

    invoke-virtual {v3, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3
    const-string v5, "uconnect_range"

    const-string v6, "\u2014"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notif_fuel_value"

    const-string v7, "id"

    invoke-static {p0, v6, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v5, "oil_life"

    const-string v6, "\u2014"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notif_oil_value"

    invoke-static {p0, v6, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v5, "tires"

    const-string v6, "\u2014"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ludo/jeepcontrols/NotificationHelper;->compactTires(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notif_tires_value"

    invoke-static {p0, v6, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v5, "updated_at"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_f

    const-string v5, "h:mm a"

    invoke-static {v5, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated \u00b7 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_f
    const-string v5, "Updated \u00b7 \u2014"

    :goto_4
    const-string v6, "notif_updated_value"

    invoke-static {p0, v6, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v5, "notif_lock"

    invoke-static {p0, v5, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.ludo.jeepcontrols.LOCK"

    const/16 v8, 0x44d

    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v5, "notif_unlock"

    invoke-static {p0, v5, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.ludo.jeepcontrols.UNLOCK"

    const/16 v8, 0x44e

    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v5, "notif_climate"

    invoke-static {p0, v5, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.ludo.jeepcontrols.CLIMATE"

    const/16 v8, 0x44f

    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v5, "notif_map"

    invoke-static {p0, v5, v7}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.ludo.jeepcontrols.LOCATION_MAP"

    const/16 v8, 0x450

    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/NotificationHelper;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/NotificationHelper;->applyParkedDirections(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/ludo/jeepcontrols/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x14000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0xc000000

    const/16 v8, 0x605

    invoke-static {p0, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/ludo/jeepcontrols/NotificationDismissReceiver;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.ludo.jeepcontrols.NOTIFICATION_DISMISSED"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v9, 0x606

    invoke-static {p0, v9, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$Builder;

    const-string v10, "jeep_controls_persistent"

    invoke-direct {v9, p0, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v10, "ic_notification_jeep_minimal"

    const-string v11, "drawable"

    invoke-static {p0, v10, v11}, Lcom/ludo/jeepcontrols/NotificationHelper;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string v10, "JEEP Controls"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string v10, "2026 Wrangler 4-Door \u2022 Tap to expand controls"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {p0, v4}, Lcom/ludo/jeepcontrols/NotificationHelper;->buildCollapsed(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/widget/RemoteViews;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    :cond_10
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    const/16 v10, 0x966

    invoke-virtual {v0, v10, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    invoke-static {p0}, Lcom/ludo/jeepcontrols/CommandReceiver;->scheduleAutoStatusRefresh(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
