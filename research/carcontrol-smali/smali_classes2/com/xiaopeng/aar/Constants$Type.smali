.class public Lcom/xiaopeng/aar/Constants$Type;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final CLIENT_SUBSCRIBE:I = 0x65

.field public static final CLIENT_SUBSCRIBE_MULTIPLE:I = 0x67

.field public static final CLIENT_UNSUBSCRIBE:I = 0x66

.field public static final CLIENT_UNSUBSCRIBE_MULTIPLE:I = 0x68

.field public static final DEFAULT:I = 0x0

.field public static final SERVER_NOTIFY_STARTED:I = 0xca

.field public static final SERVER_SEND_FORCE:I = 0xc9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
