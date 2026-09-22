.class public Lcom/ludo/jeepcontrols/JeepWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "JeepWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static applyTireStatus(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 0

    return-void
.end method

.method public static build(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 1

    const/high16 v0, 0x7f030000

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->buildForLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static buildForLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 10

    move-object v9, p0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/WidgetCloneRendererV579;->render(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f080024

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    goto :goto_0

    :goto_0
    const-string v1, "com.ludo.jeepcontrols.LOCK"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ludo.jeepcontrols.UNLOCK"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ludo.jeepcontrols.CLIMATE"

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ludo.jeepcontrols.LOCATION_MAP"

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ludo.jeepcontrols.REFRESH_STATUS"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/SecureStore;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0}, Lcom/ludo/jeepcontrols/SecureStore;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "Ready for next command \u2713"

    goto :goto_1

    :cond_1
    const-string v1, "Open app to finish secure setup"

    :goto_1
    const-string v2, "jeep_controls_widget"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "last_status"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "jeep_controls_vehicle"

    invoke-virtual {v9, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fuel"

    const-string v4, "Refresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->compactValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->isSurgicalCloneLayout(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fuel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const v5, 0x7f080005

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "odometer"

    const-string v4, "Refresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->compactValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->isSurgicalCloneLayout(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Odo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const v5, 0x7f080006

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "tires"

    const-string v4, "Refresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->compactValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->isSurgicalCloneLayout(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, " PSI"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->cloneUnavailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const v5, 0x7f03000d

    if-eq p1, v5, :cond_5

    const v5, 0x7f03000e

    if-ne p1, v5, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->formatTiresGrid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const v5, 0x7f08000c

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0, v9, v1, p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->applyTireStatus(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    const-string v2, "oil_life"

    const-string v4, "Refresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->compactValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->isSurgicalCloneLayout(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->cloneUnavailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oil "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    const v5, 0x7f08000d

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "doors"

    const-string v4, "Refresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unavailable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v4, "Refresh"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v4, "last_command_doors"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->compactValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Doors \u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v9}, Lcom/ludo/jeepcontrols/ClimateSessionState;->isRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v4, "Climate \u2022 Running"

    goto :goto_6

    :cond_a
    const-string v4, "Climate \u2022 Ready"

    :goto_6
    const v5, 0x7f08000a

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "updated_at"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_b

    const-string v4, "h:mm a"

    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated \u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_b
    const-string v2, "Updated \u2022 \u2014"

    :goto_7
    const v4, 0x7f03000b

    if-ne p1, v4, :cond_c

    const-string v4, " \u2022 "

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const v4, 0x7f080009

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v9}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v3, v1, v4

    if-lez v3, :cond_d

    const v3, 0x7f080004

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v1

    move-wide v2, v4

    const v1, 0x7f080004

    const-string v4, "Next command in %s"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_8

    :cond_d
    const v1, 0x7f080004

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_8
    return-object v0
.end method

.method private static cloneUnavailable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "N/A"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u2014"

    :cond_0
    return-object p0
.end method

.method private static compactValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    const-string v0, "tap Refresh Status"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Refresh"

    return-object p0

    :cond_1
    const-string v0, " (last cmd)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatTiresGrid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "\u2014"

    return-object p0

    :cond_0
    const-string v0, " PSI"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FL "

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

    const-string v0, " / "

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static isSurgicalCloneLayout(I)Z
    .locals 1

    const v0, 0x7f03000b

    if-eq p0, v0, :cond_0

    const v0, 0x7f03000c

    if-eq p0, v0, :cond_0

    const v0, 0x7f03000f

    if-eq p0, v0, :cond_0

    const v0, 0x7f03000d

    if-eq p0, v0, :cond_0

    const v0, 0x7f03000e

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static pi(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ludo/jeepcontrols/CommandReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 23
    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static refreshAll(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->request(Landroid/content/Context;)V

    return-void
.end method

.method static refreshAllNow(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS1_2x2;

    const v2, 0x7f030006

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS2_2x2;

    const v2, 0x7f030007

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS3_2x2;

    const v2, 0x7f030008

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS4_2x2;

    const v2, 0x7f030009

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS5_2x2;

    const v2, 0x7f03000a

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS1_3x1;

    const v2, 0x7f03000b

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS2_3x1;

    const v2, 0x7f03000c

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS3_3x1;

    const v2, 0x7f03000d

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS4_3x1;

    const v2, 0x7f03000e

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    const-class v1, Lcom/ludo/jeepcontrols/WidgetS5_3x1;

    const v2, 0x7f03000f

    invoke-static {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    return-void
.end method

.method public static rememberDoorState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DoorStateSync;->clearOfficial(Landroid/content/Context;)V

    const-string v0, "Lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Locked \u2713 (last cmd)"

    goto :goto_0

    :cond_0
    const-string v1, "Unlocked \u2713 (last cmd)"

    :goto_0
    const-string v2, "jeep_controls_vehicle"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_command_doors"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "doors"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    return-void
.end method

.method public static setStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "jeep_controls_widget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    return-void
.end method

.method private static updateProviderIfActive(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/lang/Class;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {p0, p3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->buildForLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->request(Landroid/content/Context;)V

    return-void
.end method
