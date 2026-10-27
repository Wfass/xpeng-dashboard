.class Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$1;
.super Ljava/lang/Object;
.source "AbsAppListManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "groupType"    # I

    .line 111
    return-void
.end method

.method public onAppIconChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "groupType"    # I

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->onAppOperationChanged(ILjava/lang/String;)V

    .line 106
    return-void
.end method
