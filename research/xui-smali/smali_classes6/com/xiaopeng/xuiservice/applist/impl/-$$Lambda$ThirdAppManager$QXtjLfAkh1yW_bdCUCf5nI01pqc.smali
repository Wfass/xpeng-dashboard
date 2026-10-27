.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$QXtjLfAkh1yW_bdCUCf5nI01pqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$QXtjLfAkh1yW_bdCUCf5nI01pqc;->f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$QXtjLfAkh1yW_bdCUCf5nI01pqc;->f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    check-cast p1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->lambda$handleBroadcast$7(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V

    return-void
.end method
