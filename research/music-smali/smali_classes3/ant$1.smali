.class Lant$1;
.super Lcom/nforetek/bt/aidl/c$a;
.source "BluetoothControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lant;


# direct methods
.method constructor <init>(Lant;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lant$1;->a:Lant;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "BluetoothControl"

    const-string v1, "onBluetoothServiceReady"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0}, Lano;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lano;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdapterStateChanged newState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lano;->a(II)V

    :cond_0
    return-void
.end method

.method public a(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 7

    .line 88
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lano;->a(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lano;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 144
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .line 95
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->a(Ljava/lang/String;Ljava/lang/String;B)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 102
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lano;->a(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 74
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0}, Lano;->b()V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 67
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lano;->b(II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lano;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1

    .line 151
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->b(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 81
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0}, Lano;->c()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lano;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 1

    .line 158
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->c(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 1

    .line 165
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lant$1;->a:Lant;

    invoke-static {v0}, Lant;->a(Lant;)Lano;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lano;->d(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
