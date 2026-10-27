.class Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayLayFlatWaitingTTS()V
    .locals 3

    const-string v0, "SpaceCapsuleViewModel"

    const-string v1, "onPlayLayFlatWaitingTTS"

    const/4 v2, 0x0

    .line 238
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->start_space_capsule_sleep_tts:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->start_space_capsule_cinema_tts:I

    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method public onSeatHasFlat()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    return-void
.end method

.method public onSeatStartMove(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLayFlat"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeatStartMove, isLayFlat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMoveFlat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$502(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$502(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreSpaceCapsuleSettings()V

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_0

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$502(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$502(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
