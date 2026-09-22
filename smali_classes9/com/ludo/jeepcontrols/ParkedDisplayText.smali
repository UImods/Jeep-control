.class public final Lcom/ludo/jeepcontrols/ParkedDisplayText;
.super Ljava/lang/Object;
.source "ParkedDisplayText.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\u2022 Locating\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v0, "Parked"

    return-object v0

    :cond_0
    return-object p0
.end method
