.class public final synthetic Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/operation/OperationResource;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;->f$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;->f$1:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;->f$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;->f$1:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;->lambda$onEvent$0(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method
