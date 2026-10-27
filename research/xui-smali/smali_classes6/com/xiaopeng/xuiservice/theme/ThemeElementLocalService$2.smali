.class Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;
.super Ljava/lang/Object;
.source "ThemeElementLocalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 67
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 166
    :pswitch_0
    invoke-static {p3, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadError(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 167
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_ERROR but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    goto/16 :goto_0

    .line 171
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 172
    .local v1, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p4, v1, v3}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p4, v1, v3}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V

    .line 174
    goto/16 :goto_0

    .line 155
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Integer;>;"
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 156
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_1

    .line 157
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_CANCEL but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    goto/16 :goto_0

    .line 160
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 161
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 163
    goto/16 :goto_0

    .line 144
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 145
    .restart local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_2

    .line 146
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_PAUSED but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_2
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 150
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 151
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 152
    goto/16 :goto_0

    .line 133
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :pswitch_3
    invoke-static {p3, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 134
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Float;>;"
    if-nez v0, :cond_3

    .line 135
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_IN_PROGRESS but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    goto/16 :goto_0

    .line 138
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 139
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, p4, v1, v3}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, p4, v1, v3}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V

    .line 141
    goto/16 :goto_0

    .line 122
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Float;>;"
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 123
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_4

    .line 124
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_START but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    goto/16 :goto_0

    .line 127
    :cond_4
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 128
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 130
    goto/16 :goto_0

    .line 116
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :pswitch_5
    invoke-static {p4, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getQueryRemoteError(ILjava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "reason":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onQueryRemoteThemeElementFailed(II)V

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onQueryRemoteThemeElementFailed(II)V

    .line 119
    goto/16 :goto_0

    .line 102
    .end local v0    # "reason":I
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementSelectionChanged(I)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementSelectionChanged(I)V

    .line 104
    goto/16 :goto_0

    .line 80
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 81
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_5

    .line 82
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_UPDATE but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto/16 :goto_0

    .line 85
    :cond_5
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 86
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 88
    goto/16 :goto_0

    .line 91
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :cond_6
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 92
    .restart local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_7

    .line 93
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_DELETE but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto/16 :goto_0

    .line 96
    :cond_7
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 97
    .restart local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 98
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 99
    goto :goto_0

    .line 107
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :cond_8
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;

    .line 109
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 110
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V

    .line 113
    goto :goto_0

    .line 69
    .end local v0    # "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    :cond_9
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 70
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_a

    .line 71
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_ADD but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 74
    :cond_a
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v1

    .line 75
    .local v1, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 76
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v2

    invoke-virtual {v2, p4, v1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 77
    nop

    .line 179
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 185
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 58
    const v0, 0x107b25

    if-lt p3, v0, :cond_2

    const v0, 0x107b87

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;->this$0:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListenerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeElementLocalService$2$5-LTbIj5MotpZ3XprQZAGAqOmsA;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeElementLocalService$2$5-LTbIj5MotpZ3XprQZAGAqOmsA;-><init>(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void

    .line 59
    :cond_2
    :goto_0
    return-void
.end method
