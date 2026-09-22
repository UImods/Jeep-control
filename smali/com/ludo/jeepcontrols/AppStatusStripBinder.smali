.class public final Lcom/ludo/jeepcontrols/AppStatusStripBinder;
.super Ljava/lang/Object;
.source "AppStatusStripBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/app/Activity;)V
    .locals 10

    .line 57
    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleDisplayState;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "D On the road"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "app_motion_text"

    const-string v5, "app_motion_badge"

    if-eqz v3, :cond_0

    .line 61
    const-string v2, "drive_speed_mph_raw"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 62
    const-string v2, "D"

    invoke-static {p0, v5, v2}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On the road \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mph"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v4, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    const-string v1, "R Reverse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "R"

    invoke-static {p0, v5, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Reverse"

    invoke-static {p0, v4, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "N Neutral"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "N"

    invoke-static {p0, v5, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Neutral"

    invoke-static {p0, v4, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "P"

    invoke-static {p0, v5, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    const-string v1, "Parked "

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Parked \u2022 "

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 66
    :cond_4
    :goto_0
    const-string v2, "Parked"

    .line 68
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/ludo/jeepcontrols/ParkedDisplayText;->render(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v4, v2}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->textSequence(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 71
    :goto_2
    const-string v1, "doors"

    const-string v2, "Unavailable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Refresh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 73
    :cond_6
    const-string v1, "last_command_doors"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    :cond_7
    const-string v2, ""

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_3
    const-string v3, "unlock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "lock"

    const-string v6, "app_armed_icon"

    const-string v7, "app_armed_text"

    if-eqz v4, :cond_9

    .line 77
    const-string v4, "DISARMED"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "#F0B24A"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->color(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "ic_notif_shield_amber"

    invoke-static {p0, v6, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 80
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v8, "ic_notif_shield_green"

    if-eqz v4, :cond_a

    .line 81
    const-string v4, "ARMED"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "#35DD75"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->color(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 85
    :cond_a
    const-string v4, "STATUS"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "#E4E9F1"

    invoke-static {p0, v7, v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->color(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0, v6, v8}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_4
    const-string v4, "tires"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v6, "oil_life"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    const-string v7, "fuel"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v4}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->minNumber(Ljava/lang/String;)F

    move-result v4

    .line 94
    invoke-static {v6}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->firstNumber(Ljava/lang/String;)F

    move-result v6

    .line 95
    invoke-static {v2}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->firstNumber(Ljava/lang/String;)F

    move-result v2

    .line 96
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v8, "app_warning_icon"

    const-string v9, "app_warning_text"

    if-nez v7, :cond_b

    const/high16 v7, 0x420c0000    # 35.0f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_b

    .line 97
    const-string v1, "Tire Needs Air"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "ic_notif_oem_tires"

    invoke-static {p0, v8, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 99
    :cond_b
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_c

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_c

    .line 100
    const-string v1, "Needs Oil"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "ic_notif_oem_oil_filled"

    invoke-static {p0, v8, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 102
    :cond_c
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_d

    const/high16 v4, 0x41c80000    # 25.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_d

    .line 103
    const-string v1, "Needs Fuel"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "ic_notif_oem_fuel"

    invoke-static {p0, v8, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 105
    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 106
    const-string v1, "Doors Unlocked"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "ic_notif_oem_unlock"

    invoke-static {p0, v8, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 108
    :cond_e
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ic_notif_oem_lock"

    if-eqz v1, :cond_f

    .line 109
    const-string v1, "Doors Locked"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, v8, v2}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 112
    :cond_f
    const-string v1, "Jeep Status"

    invoke-static {p0, v9, v1}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, v8, v2}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_5
    const-string v1, "uconnect_range"

    const-string v2, "\u2014"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    move-object v2, v0

    .line 118
    :cond_11
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fuel  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_fuel_range"

    invoke-static {p0, v1, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Lcom/ludo/jeepcontrols/ParkedDirectionsUi;->bind(Landroid/app/Activity;)V

    return-void
.end method

.method private static color(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 22
    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 24
    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :cond_1
    return-void
.end method

.method private static firstNumber(Ljava/lang/String;)F
    .locals 3

    .line 36
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    const-string v1, "[^0-9.]+"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 39
    :cond_1
    const-string v1, " +"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 40
    const/4 v1, 0x0

    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    return v0
.end method

.method private static id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static image(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 28
    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const-string v0, "drawable"

    invoke-static {p0, p2, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 32
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    :cond_1
    return-void
.end method

.method private static minNumber(Ljava/lang/String;)F
    .locals 5

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p0, :cond_0

    return v0

    .line 44
    :cond_0
    const-string v1, "[^0-9.]+"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 46
    :cond_1
    const-string v1, " +"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 47
    nop

    .line 48
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 50
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    :cond_2
    move v0, v3

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v3

    :cond_3
    :goto_1
    nop

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_4
    return v0
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 16
    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 18
    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    return-void
.end method

.method private static textSequence(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/ludo/jeepcontrols/AppStatusStripBinder;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
