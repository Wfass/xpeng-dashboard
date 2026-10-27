.class Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPopPanel$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideRunnable"
.end annotation


# instance fields
.field private mCode:I

.field private final mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 1
    .param p1, "tn"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    .line 659
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 660
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$400(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    .line 669
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 663
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    .line 664
    return-void
.end method
