.class Lanu$1;
.super Lcom/nforetek/bt/aidl/e$a;
.source "PhoneControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanu;


# direct methods
.method constructor <init>(Lanu;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lanu$1;->a:Lanu;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 52
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0}, Lanq;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lanq;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanq;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 1

    .line 101
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lanq;->a(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nforetek/bt/aidl/NfHfpClientCall;)V
    .locals 8

    .line 115
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->a()I

    move-result v3

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->b()I

    move-result v4

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->d()Z

    move-result v6

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->e()Z

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lanq;->a(Ljava/lang/String;IILjava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lanq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lanq;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1

    .line 66
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanq;->b(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;III)V
    .locals 1

    .line 108
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lanq;->b(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lanq;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lanu$1;->a:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Lanq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lanq;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
