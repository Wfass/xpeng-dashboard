.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$oT7bygDAirrWPalJRqmmG3UU_I4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$oT7bygDAirrWPalJRqmmG3UU_I4;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    return-void
.end method


# virtual methods
.method public final onRequestFinish(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$oT7bygDAirrWPalJRqmmG3UU_I4;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$queryOperationApps_old$5(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)V

    return-void
.end method
