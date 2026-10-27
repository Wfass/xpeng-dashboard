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

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 662
    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    .line 664
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$300(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 668
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->mCode:I

    return-void
.end method
