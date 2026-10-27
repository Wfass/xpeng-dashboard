.class Lcom/xiaopeng/libbluetooth/a$1;
.super Lcom/xiaopeng/libbluetooth/d;
.source "AbsControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xi:Lcom/xiaopeng/libbluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/a;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/a$1;->Xi:Lcom/xiaopeng/libbluetooth/a;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/d;-><init>()V

    return-void
.end method


# virtual methods
.method b(Lcom/xiaopeng/b/a;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/a$1;->Xi:Lcom/xiaopeng/libbluetooth/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libbluetooth/a;->a(Lcom/xiaopeng/b/a;)V

    .line 32
    return-void
.end method

.method onDisconnected()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/a$1;->Xi:Lcom/xiaopeng/libbluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/a;->pp()V

    .line 27
    return-void
.end method

.method pr()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/libbluetooth/d;->pr()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/a$1;->Xi:Lcom/xiaopeng/libbluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/a;->pq()V

    .line 38
    return-void
.end method

.method ps()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/a$1;->Xi:Lcom/xiaopeng/libbluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/a;->release()V

    .line 43
    return-void
.end method
