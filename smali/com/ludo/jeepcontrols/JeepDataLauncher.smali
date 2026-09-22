.class public final Lcom/ludo/jeepcontrols/JeepDataLauncher;
.super Ljava/lang/Object;
.source "JeepDataLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/ludo/jeepcontrols/AutoDataHelper;->prepare(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.fca.myconnect.nafta"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Reading Oil Life and Tire PSI from Jeep app\u2026"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x1

    return v4

    :catch_0
    invoke-static {p0}, Lcom/ludo/jeepcontrols/AutoDataHelper;->clear(Landroid/content/Context;)V

    const/4 v4, 0x0

    return v4

    :cond_1
    invoke-static {p0}, Lcom/ludo/jeepcontrols/AutoDataHelper;->clear(Landroid/content/Context;)V

    const/4 v4, 0x0

    return v4
.end method
