.class public final Lcom/ludo/jeepcontrols/ParkedAnchorTrust209;
.super Ljava/lang/Object;
.source "ParkedAnchorTrust209.java"


# direct methods
.method public static isTrusted(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "jeep_controls_vehicle"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/ludo/jeepcontrols/ParkedAnchorTrust209;->isTrustedPrefs(Landroid/content/SharedPreferences;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isTrustedPrefs(Landroid/content/SharedPreferences;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "park_anchor_source"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uconnect_lastknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "park_session_id"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    const-string v1, "park_anchor_session_id"

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const-string v1, "park_anchor_proof209_session_id"

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
