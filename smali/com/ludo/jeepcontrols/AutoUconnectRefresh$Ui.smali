.class final Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Ui;
.super Ljava/lang/Object;
.source "AutoUconnectRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Ui;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Ui;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    return-void
.end method
