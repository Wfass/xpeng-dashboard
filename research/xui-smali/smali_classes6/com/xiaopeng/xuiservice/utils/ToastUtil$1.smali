.class Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$displayId:I

.field final synthetic val$duration:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$msg:Ljava/lang/String;

    iput p2, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$duration:I

    iput p3, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$msg:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$duration:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/utils/ToastUtil$1;->val$displayId:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    .line 41
    return-void
.end method
