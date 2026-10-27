.class public final Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant$SYNCSTATUS;
.super Ljava/lang/Object;
.source "PhoneConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SYNCSTATUS"
.end annotation


# static fields
.field public static final SYNCHRONIZING:I = 0x0

.field public static final SYNC_COMPLETE:I = 0x1

.field public static final SYNC_NOT_STARTED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant$SYNCSTATUS;->this$0:Lcom/xiaopeng/speech/protocol/query/phone/PhoneConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
