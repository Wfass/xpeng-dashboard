.class Lcom/xiaopeng/musicradio/MineInit$1;
.super Ljava/lang/Object;
.source "MineInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/MineInit;->initDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/MineInit;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/MineInit;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/MineInit$1;->a:Lcom/xiaopeng/musicradio/MineInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 31
    invoke-static {}, Larp;->a()Larp;

    move-result-object v0

    invoke-virtual {v0}, Larp;->b()V

    return-void
.end method
