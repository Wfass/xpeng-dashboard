.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dSxSe2h-JeCDSTahVhilHnt0Ej8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dSxSe2h-JeCDSTahVhilHnt0Ej8;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;

    return-void
.end method


# virtual methods
.method public final onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dSxSe2h-JeCDSTahVhilHnt0Ej8;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$fetchPreLoadApps$0(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V

    return-void
.end method
