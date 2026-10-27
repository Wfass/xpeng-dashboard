.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$-FRwBLlsTaByq392QY7wbXlObh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$-FRwBLlsTaByq392QY7wbXlObh0;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    return-void
.end method


# virtual methods
.method public final onAppIconReady(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$-FRwBLlsTaByq392QY7wbXlObh0;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->lambda$fetchIconAsync$1(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method
