.class public abstract Lcom/xiaopeng/libbluetooth/a;
.super Ljava/lang/Object;
.source "AbsControlBox.java"


# instance fields
.field protected Xh:Lcom/xiaopeng/libbluetooth/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/libbluetooth/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/a$1;-><init>(Lcom/xiaopeng/libbluetooth/a;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/a;->Xh:Lcom/xiaopeng/libbluetooth/d;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/xiaopeng/b/a;)V
.end method

.method protected abstract pp()V
.end method

.method protected abstract pq()V
.end method

.method protected abstract release()V
.end method
