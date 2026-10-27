.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;
.super Ljava/lang/Object;
.source "IOsdListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.osd.IOsdListener"


# virtual methods
.method public abstract hideOsd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showOsd(Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
