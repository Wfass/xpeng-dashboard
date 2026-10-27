.class Lcom/xiaopeng/xui/app/a/e$c;
.super Ljava/lang/Object;
.source "XActivityDismissCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private aaB:Lcom/xiaopeng/xui/app/a/e$d;

.field mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/e$c;->mActivity:Landroid/app/Activity;

    .line 74
    iput-object p2, p0, Lcom/xiaopeng/xui/app/a/e$c;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    .line 75
    return-void
.end method


# virtual methods
.method dismiss(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$c;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$c;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/a/e$d;->eg(I)V

    .line 81
    :cond_0
    return-void
.end method
