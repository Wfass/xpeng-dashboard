.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$RuC5t-dbBeSJnmruehLADGfsRy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$RuC5t-dbBeSJnmruehLADGfsRy8;->f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$RuC5t-dbBeSJnmruehLADGfsRy8;->f$0:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->lambda$uninstallApp$2(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    return-void
.end method
