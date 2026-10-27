.class public final synthetic Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final synthetic f$0:Lcom/loostone/libserver/version1/net/NetParam;

.field private final synthetic f$1:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;


# direct methods
.method public synthetic constructor <init>(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;->f$0:Lcom/loostone/libserver/version1/net/NetParam;

    iput-object p2, p0, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;->f$1:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;->f$0:Lcom/loostone/libserver/version1/net/NetParam;

    iget-object v1, p0, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;->f$1:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/loostone/libserver/version1/net/NetRequest;->lambda$request$0(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;Ljava/lang/String;)V

    return-void
.end method
