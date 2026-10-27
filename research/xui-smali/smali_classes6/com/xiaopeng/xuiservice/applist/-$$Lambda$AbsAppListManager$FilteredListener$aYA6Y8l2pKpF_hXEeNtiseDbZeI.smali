.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    iput p2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;->f$2:[Ljava/lang/String;

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->lambda$onAppEvent$1(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;I[Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    return-void
.end method
