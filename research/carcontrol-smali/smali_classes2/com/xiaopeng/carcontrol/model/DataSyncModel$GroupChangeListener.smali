.class public interface abstract Lcom/xiaopeng/carcontrol/model/DataSyncModel$GroupChangeListener;
.super Ljava/lang/Object;
.source "DataSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/DataSyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupChangeListener"
.end annotation


# virtual methods
.method public abstract onAccountOrGroupChange(Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncGroupEventMsg"
        }
    .end annotation
.end method
