.class public interface abstract Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
.super Ljava/lang/Object;
.source "XActivityDismiss.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$DismissCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$DismissType;
    }
.end annotation


# static fields
.field public static final DISMISS_CAUSE_BACK:I = 0x1

.field public static final DISMISS_CAUSE_OUTSIDE:I = 0x3

.field public static final DISMISS_CAUSE_PAUSE:I = 0x2

.field public static final DISMISS_CAUSE_TIMEOUT:I = 0x4

.field public static final DISMISS_CAUSE_USER:I = 0x0

.field public static final DISMISS_TYPE_FINISH:I = 0x0

.field public static final DISMISS_TYPE_MOVE_BACK:I = 0x1


# virtual methods
.method public abstract dismiss(I)V
.end method

.method public abstract setDismissDelay(J)V
.end method

.method public abstract setDismissType(I)V
.end method

.method public abstract setOnDismissListener(Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;)V
.end method
