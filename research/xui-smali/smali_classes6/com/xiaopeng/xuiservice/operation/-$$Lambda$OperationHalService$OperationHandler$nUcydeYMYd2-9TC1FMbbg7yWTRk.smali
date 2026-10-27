.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$OperationHandler$nUcydeYMYd2-9TC1FMbbg7yWTRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$OperationHandler$nUcydeYMYd2-9TC1FMbbg7yWTRk;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$OperationHandler$nUcydeYMYd2-9TC1FMbbg7yWTRk;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    check-cast p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->lambda$handleMessage$0(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method
