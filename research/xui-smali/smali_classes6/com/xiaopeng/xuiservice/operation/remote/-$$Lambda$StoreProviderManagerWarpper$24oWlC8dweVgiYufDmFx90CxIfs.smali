.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$24oWlC8dweVgiYufDmFx90CxIfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$24oWlC8dweVgiYufDmFx90CxIfs;->f$0:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$24oWlC8dweVgiYufDmFx90CxIfs;->f$0:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$toSparseArray$6(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    move-result-object p1

    return-object p1
.end method
