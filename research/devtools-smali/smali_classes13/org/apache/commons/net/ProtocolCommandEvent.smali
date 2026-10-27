.class public Lorg/apache/commons/net/ProtocolCommandEvent;
.super Ljava/util/EventObject;
.source "ProtocolCommandEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x59a629bebd214a8L


# instance fields
.field private final __command:Ljava/lang/String;

.field private final __isCommand:Z

.field private final __message:Ljava/lang/String;

.field private final __replyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 82
    iput p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 83
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 84
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 85
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 58
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 59
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 60
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 61
    iput-object p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 62
    return-void
.end method
