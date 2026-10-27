.class public final synthetic Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$dhBX_iU8GUFgerWgJTxLdo9ebfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/client/ApiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/client/ApiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$dhBX_iU8GUFgerWgJTxLdo9ebfg;->f$0:Lcom/xiaopeng/aar/client/ApiManager;

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    iget-object v0, p0, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$dhBX_iU8GUFgerWgJTxLdo9ebfg;->f$0:Lcom/xiaopeng/aar/client/ApiManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/aar/client/ApiManager;->lambda$dhBX_iU8GUFgerWgJTxLdo9ebfg(Lcom/xiaopeng/aar/client/ApiManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
