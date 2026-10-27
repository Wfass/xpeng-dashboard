.class Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;
.super Ljava/lang/Object;
.source "SecurityModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->verifyWifiKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/http/ICallback<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;II)V

    .line 87
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "code":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 80
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    const/4 v2, 0x3

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 81
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    .line 80
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;II)V

    .line 82
    return-void
.end method
