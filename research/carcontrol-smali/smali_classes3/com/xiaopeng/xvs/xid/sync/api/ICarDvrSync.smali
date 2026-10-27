.class public interface abstract Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;
.super Ljava/lang/Object;
.source "ICarDvrSync.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICommonSync;


# static fields
.field public static final KEY_DVR_BT_ST:Ljava/lang/String; = "DVR_KEY_DVR_BT_ST"

.field public static final KEY_DVR_TYPE:Ljava/lang/String; = "DVR_KEY_DVR_TYPE"


# virtual methods
.method public abstract getDvrBtSt(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getDvrType(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract putDvrBtSt(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract putDvrType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
