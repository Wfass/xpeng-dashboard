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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XCustomPickerDialog;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;->this$0:Lcom/xiaopeng/xui/app/XCustomPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 70
    const-string v0, "XCustomPickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectedView. position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
