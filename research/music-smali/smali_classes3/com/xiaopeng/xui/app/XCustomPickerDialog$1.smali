.class Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;
.super Ljava/lang/Object;
.source "XCustomPickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XCustomPickerDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XCustomPickerDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;->this$0:Lcom/xiaopeng/xui/app/XCustomPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedView(Landroid/view/View;I)V
    .locals 1

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelectedView. position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XCustomPickerDialog"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
