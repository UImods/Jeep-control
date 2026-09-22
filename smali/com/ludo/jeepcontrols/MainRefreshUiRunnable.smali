.class public final Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;
.super Ljava/lang/Object;
.source "MainRefreshUiRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/ludo/jeepcontrols/MainActivity;

.field private final result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    const v6, 0x7f08001a

    invoke-virtual {v0, v6}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    invoke-static {v0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;->result:Ljava/lang/String;

    const-string v3, "SUCCESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "jeep_controls_vehicle"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ludo/jeepcontrols/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "uconnect_active"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "Uconnect live data updated \u2713"

    goto :goto_0

    :cond_1
    const-string v2, "Live status updated \u2713"

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status refresh \u2022 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
