.class public final Lcom/ludo/jeepcontrols/ParkedDirectionsClickListener;
.super Ljava/lang/Object;
.source "ParkedDirectionsClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/ParkedDirectionsClickListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ludo/jeepcontrols/ParkedDirectionsClickListener;->context:Landroid/content/Context;

    const-string v1, "Location"

    invoke-static {v0, v1}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ludo/jeepcontrols/ParkedDirectionsLauncher;->open(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "Parked Jeep location is not available yet"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
