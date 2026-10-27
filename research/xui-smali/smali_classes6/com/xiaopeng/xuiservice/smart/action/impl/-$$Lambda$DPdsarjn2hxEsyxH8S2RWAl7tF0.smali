.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$DPdsarjn2hxEsyxH8S2RWAl7tF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$DPdsarjn2hxEsyxH8S2RWAl7tF0;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$DPdsarjn2hxEsyxH8S2RWAl7tF0;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->stop()V

    return-void
.end method
