.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$qEV3Dr4Oe6bTajYf1prk73IhayM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$qEV3Dr4Oe6bTajYf1prk73IhayM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$qEV3Dr4Oe6bTajYf1prk73IhayM;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->lambda$createWorkHandler$1(Ljava/lang/String;)V

    return-void
.end method
