.class public interface abstract Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;
.super Ljava/lang/Object;
.source "IUserScenarioListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Stub;,
        Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.userscenario.IUserScenarioListener"


# virtual methods
.method public abstract onUserScenarioStateChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
