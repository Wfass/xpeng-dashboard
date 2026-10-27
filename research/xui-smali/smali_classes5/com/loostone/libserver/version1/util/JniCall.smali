.class public final Lcom/loostone/libserver/version1/util/JniCall;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:Lcom/loostone/libserver/version1/util/JniCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libserver/version1/util/JniCall;

    invoke-direct {v0}, Lcom/loostone/libserver/version1/util/JniCall;-><init>()V

    sput-object v0, Lcom/loostone/libserver/version1/util/JniCall;->OooO00o:Lcom/loostone/libserver/version1/util/JniCall;

    const-string v0, "PureNet"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native initNetConfig()V
.end method
