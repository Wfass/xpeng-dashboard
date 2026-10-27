.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$k0Puilewz77_xQrIQ1Y2F-BDK8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$k0Puilewz77_xQrIQ1Y2F-BDK8o;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$k0Puilewz77_xQrIQ1Y2F-BDK8o;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Z

    move-result p1

    return p1
.end method
