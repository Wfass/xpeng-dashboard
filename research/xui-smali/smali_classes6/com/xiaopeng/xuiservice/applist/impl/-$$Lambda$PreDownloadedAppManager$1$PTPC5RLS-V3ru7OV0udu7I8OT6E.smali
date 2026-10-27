.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;

.field private final synthetic f$1:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;->f$1:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;->f$1:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;->lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    return-void
.end method
