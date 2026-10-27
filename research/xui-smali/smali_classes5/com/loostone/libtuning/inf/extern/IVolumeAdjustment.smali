.class public interface abstract Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0003\u0008\u00bb\u0001\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J\u0019\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u0019\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0016\u0010\u000cJ\u000f\u0010\u0017\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ\u0019\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u0019\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u000f\u0010\u001b\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u0019\u0010\u001c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u000f\u0010\u001d\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001d\u0010\u000eJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008 \u0010\u0006J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008!\u0010\u0006J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\"\u0010\u0006J\u0017\u0010#\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008#\u0010\u0006J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008$\u0010\u0006J\u0017\u0010%\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008%\u0010\u0006J\u0017\u0010&\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008&\u0010\u0006J\u0017\u0010\'\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\'\u0010\u0006J\u0017\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008)\u0010\u0006J\u0017\u0010*\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008*\u0010\u0006J\u0017\u0010+\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008+\u0010\u0006J\u0017\u0010,\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008,\u0010\u0006J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008-\u0010\u0006J\u0017\u0010.\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008.\u0010\u0006J\u0017\u0010/\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008/\u0010\u0006J\u0017\u00100\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00080\u0010\u0006J\u0017\u00101\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00081\u0010\u0006J\u0017\u00102\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00082\u0010\u0006J\u0017\u00103\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00083\u0010\u0006J\u0017\u00104\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00084\u0010\u0006J\u0017\u00105\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00085\u0010\u0006J\u0017\u00106\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00086\u0010\u0006J\u0017\u00107\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00087\u0010\u0006J\u0017\u00108\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00088\u0010\u0006J\u0017\u00109\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00089\u0010\u0006J\u0017\u0010:\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008:\u0010\u0006J\u0017\u0010;\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008;\u0010\u0006J\u0017\u0010<\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008<\u0010\u0006J\u0017\u0010=\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008=\u0010\u0006J\u0017\u0010>\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008>\u0010\u0006J\u0017\u0010?\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008?\u0010\u0006J\u0017\u0010@\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008@\u0010\u0006J\u0017\u0010A\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008A\u0010\u0006J\u0017\u0010B\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008B\u0010\u0006J\u0017\u0010C\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008C\u0010\u0006J\u0017\u0010D\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008D\u0010\u0006J\u0017\u0010E\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008E\u0010\u0006J\u0017\u0010F\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008F\u0010\u0006J\u0017\u0010G\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008G\u0010\u0006J\u0017\u0010H\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008H\u0010\u0006J\u0017\u0010I\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008I\u0010\u0006J\u0017\u0010J\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008J\u0010\u0006J\u0017\u0010K\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008K\u0010\u0006J\u0017\u0010L\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008L\u0010\u0006J\u0017\u0010N\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008N\u0010\u0006J\u0017\u0010O\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008O\u0010\u0006J\u0017\u0010P\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008P\u0010\u0006J\u0017\u0010Q\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008Q\u0010\u0006J\u0017\u0010R\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008R\u0010\u0006J\u0017\u0010S\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008S\u0010\u0006J\u0017\u0010T\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008T\u0010\u0006J\u0017\u0010U\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008U\u0010\u0006J\u0017\u0010V\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008V\u0010\u0006J\u000f\u0010W\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008W\u0010\u0008J\u000f\u0010X\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008X\u0010\u0008J\u000f\u0010Y\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008Y\u0010\u0008J\u000f\u0010Z\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008Z\u0010\u0008J\u000f\u0010[\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008[\u0010\u0008J\u000f\u0010\\\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\\\u0010\u0008J\u000f\u0010]\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008]\u0010\u0008J\u000f\u0010^\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008^\u0010\u0008J\u000f\u0010_\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008_\u0010\u0008J\u000f\u0010`\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008`\u0010\u0008J\u000f\u0010a\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008a\u0010\u0008J\u000f\u0010b\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008b\u0010\u0008J\u000f\u0010c\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008c\u0010\u0008J\u000f\u0010d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008d\u0010\u0008J\u000f\u0010e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008e\u0010\u0008J\u000f\u0010f\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008f\u0010\u0008J\u000f\u0010g\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008g\u0010\u0008J\u000f\u0010h\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008h\u0010\u0008J\u000f\u0010i\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008i\u0010\u0008J\u000f\u0010j\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008j\u0010\u0008J\u000f\u0010k\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008k\u0010\u0008J\u000f\u0010l\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008l\u0010\u0008J\u000f\u0010m\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008m\u0010\u0008J\u000f\u0010n\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008n\u0010\u0008J\u000f\u0010o\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008o\u0010\u0008J\u000f\u0010p\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008p\u0010\u0008J\u000f\u0010q\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008q\u0010\u0008J\u000f\u0010r\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008r\u0010\u0008J\u000f\u0010s\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008s\u0010\u0008J\u000f\u0010t\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008t\u0010\u0008J\u000f\u0010u\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008u\u0010\u0008J\u000f\u0010v\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008v\u0010\u0008J\u000f\u0010w\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008w\u0010\u0008J\u000f\u0010x\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008x\u0010\u0008J\u000f\u0010y\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008y\u0010\u0008J\u000f\u0010z\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008z\u0010\u0008J\u000f\u0010{\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008{\u0010\u0008J\u000f\u0010|\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008|\u0010\u0008J\u000f\u0010}\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008}\u0010\u0008J\u000f\u0010~\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008~\u0010\u0008J\u000f\u0010\u007f\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u007f\u0010\u0008J\u0011\u0010\u0080\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\u0008J\u0011\u0010\u0081\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0081\u0001\u0010\u0008J\u0011\u0010\u0082\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u0008J\u0011\u0010\u0083\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0083\u0001\u0010\u0008J\u0011\u0010\u0084\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0008J\u0011\u0010\u0085\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0085\u0001\u0010\u0008J\u0011\u0010\u0086\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\u0008J\u0011\u0010\u0087\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0087\u0001\u0010\u0008J\u0011\u0010\u0088\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0088\u0001\u0010\u0008J\u0011\u0010\u0089\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u0008J\u0011\u0010\u008a\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u0008J\u0011\u0010\u008b\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u008b\u0001\u0010\u0008J\u0011\u0010\u008c\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u008c\u0001\u0010\u0008J\u0019\u0010\u008d\u0001\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u008d\u0001\u0010\u000cJ\u0011\u0010\u008e\u0001\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u008e\u0001\u0010\u000eJ\u001c\u0010\u0090\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u008f\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0090\u0001\u0010\u0006J\u0011\u0010\u0091\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0091\u0001\u0010\u0008J\u001c\u0010\u0093\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0092\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0093\u0001\u0010\u0006J\u0011\u0010\u0094\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0094\u0001\u0010\u0008J\u001c\u0010\u0096\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0095\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0096\u0001\u0010\u0006J\u0011\u0010\u0097\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0097\u0001\u0010\u0008J\u001c\u0010\u0099\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u0099\u0001\u0010\u0006J\u0011\u0010\u009a\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009a\u0001\u0010\u0008J\u001a\u0010\u009b\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009b\u0001\u0010\u0006J\u0011\u0010\u009c\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\u0008J\u001a\u0010\u009d\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0006J\u0011\u0010\u009e\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0008J\u001a\u0010\u009f\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0006J\u0011\u0010\u00a0\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010\u0008J\u001b\u0010\u00a1\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010\u000cJ\u0011\u0010\u00a2\u0001\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010\u000eJ\u001a\u0010\u00a3\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010\u0006J\u0011\u0010\u00a4\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010\u0008J\u001c\u0010\u00a6\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00a5\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010\u0006J\u0011\u0010\u00a7\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a7\u0001\u0010\u0008J\u001b\u0010\u00a8\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010\u0006J\u0011\u0010\u00a9\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00a9\u0001\u0010\u0008J\u001c\u0010\u00ab\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00aa\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ab\u0001\u0010\u0006J\u0011\u0010\u00ac\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ac\u0001\u0010\u0008J\u001a\u0010\u00ad\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010\u0006J\u0011\u0010\u00ae\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010\u0008J\u001a\u0010\u00af\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00af\u0001\u0010\u0006J\u0011\u0010\u00b0\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b0\u0001\u0010\u0008J\u001a\u0010\u00b1\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010\u0006J\u0011\u0010\u00b2\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b2\u0001\u0010\u0008J\u001a\u0010\u00b3\u0001\u001a\u00020\u00042\u0007\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b3\u0001\u0010\u0006J\u0011\u0010\u00b4\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010\u0008J\u001b\u0010\u00b5\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\u000cJ\u0011\u0010\u00b6\u0001\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00b6\u0001\u0010\u000eJ\u001c\u0010\u00b7\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b7\u0001\u0010\u0006J\u0011\u0010\u00b8\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b8\u0001\u0010\u0008J\u001c\u0010\u00b9\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00b9\u0001\u0010\u0006J\u0011\u0010\u00ba\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ba\u0001\u0010\u0008J\u001c\u0010\u00bb\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00bb\u0001\u0010\u0006J\u0011\u0010\u00bc\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00bc\u0001\u0010\u0008J\u001c\u0010\u00bd\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00bd\u0001\u0010\u0006J\u0011\u0010\u00be\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00be\u0001\u0010\u0008J\u001c\u0010\u00bf\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010\u0006J\u0011\u0010\u00c0\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00c0\u0001\u0010\u0008J\u001b\u0010\u00c1\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00c1\u0001\u0010\u000cJ\u0011\u0010\u00c2\u0001\u001a\u00020\tH&\u00a2\u0006\u0005\u0008\u00c2\u0001\u0010\u000eJ\u001c\u0010\u00c3\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00a5\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00c3\u0001\u0010\u0006J\u0011\u0010\u00c4\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00c4\u0001\u0010\u0008J)\u0010\u00c7\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00a5\u0001\u001a\u00020\u00022\n\u0008\u0002\u0010\u00c6\u0001\u001a\u00030\u00c5\u0001H&\u00a2\u0006\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001J\u0011\u0010\u00c9\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00c9\u0001\u0010\u0008J\u001c\u0010\u00ca\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00a5\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ca\u0001\u0010\u0006J\u0011\u0010\u00cb\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00cb\u0001\u0010\u0008J\u001b\u0010\u00cc\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00cc\u0001\u0010\u0006J\u0011\u0010\u00cd\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00cd\u0001\u0010\u0008J\u001b\u0010\u00ce\u0001\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00ce\u0001\u0010\u0006J\u0011\u0010\u00cf\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00cf\u0001\u0010\u0008J\u0011\u0010\u00d0\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00d0\u0001\u0010\u0008J\u001c\u0010\u00d3\u0001\u001a\u00020\u00042\u0008\u0010\u00d2\u0001\u001a\u00030\u00d1\u0001H&\u00a2\u0006\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001J\u0011\u0010\u00d5\u0001\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00d5\u0001\u0010\u0008J\u0012\u0010\u00d6\u0001\u001a\u00020\u0004H&\u00a2\u0006\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001J\u0019\u0010\u00d8\u0001\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00d8\u0001\u0010\u0006J\u0019\u0010\u00d9\u0001\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H&\u00a2\u0006\u0005\u0008\u00d9\u0001\u0010\u0006\u00a8\u0006\u00da\u0001"
    }
    d2 = {
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "",
        "",
        "volume",
        "",
        "setMicVolume",
        "(I)V",
        "getMicVolume",
        "()I",
        "",
        "enable",
        "setMicVolumeEnable",
        "(Z)V",
        "isMicVolumeEnable",
        "()Z",
        "setSystemVolume",
        "getSystemVolume",
        "setMusicVolume",
        "getMusicVolume",
        "balance",
        "setBalance",
        "getBalance",
        "setAef1ReverbEnable",
        "isAef1ReverbEnable",
        "setAef1ReverbOutGain",
        "getAef1ReverbOutGain",
        "setAef2EQEnable",
        "isAef2EQEnable",
        "setAef2MusicEQEnable",
        "isAef2MusicEQEnable",
        "gain",
        "setAef2EQ1",
        "setAef2EQ2",
        "setAef2EQ3",
        "setAef2EQ4",
        "setAef2EQ5",
        "setAef2EQ6",
        "setAef2EQ7",
        "setAef2EQ8",
        "setAef2EQ9",
        "frequency",
        "setAef2EQ1Frequency",
        "setAef2EQ2Frequency",
        "setAef2EQ3Frequency",
        "setAef2EQ4Frequency",
        "setAef2EQ5Frequency",
        "setAef2EQ6Frequency",
        "setAef2EQ7Frequency",
        "setAef2EQ8Frequency",
        "setAef2EQ9Frequency",
        "setAef2MusicEQ1",
        "setAef2MusicEQ2",
        "setAef2MusicEQ3",
        "setAef2MusicEQ4",
        "setAef2MusicEQ5",
        "setAef2MusicEQ6",
        "setAef2MusicEQ7",
        "setAef2MusicEQ8",
        "setAef2MusicEQ9",
        "setAef2MusicEQ1Frequency",
        "setAef2MusicEQ2Frequency",
        "setAef2MusicEQ3Frequency",
        "setAef2MusicEQ4Frequency",
        "setAef2MusicEQ5Frequency",
        "setAef2MusicEQ6Frequency",
        "setAef2MusicEQ7Frequency",
        "setAef2MusicEQ8Frequency",
        "setAef2MusicEQ9Frequency",
        "setAef3EqQ1",
        "setAef3EqQ2",
        "setAef3EqQ3",
        "setAef3EqQ4",
        "setAef3EqQ5",
        "setAef3EqQ6",
        "setAef3EqQ7",
        "setAef3EqQ8",
        "setAef3EqQ9",
        "type",
        "setAef3EQ1Type",
        "setAef3EQ2Type",
        "setAef3EQ3Type",
        "setAef3EQ4Type",
        "setAef3EQ5Type",
        "setAef3EQ6Type",
        "setAef3EQ7Type",
        "setAef3EQ8Type",
        "setAef3EQ9Type",
        "getAef2EQ1",
        "getAef2EQ2",
        "getAef2EQ3",
        "getAef2EQ4",
        "getAef2EQ5",
        "getAef2EQ6",
        "getAef2EQ7",
        "getAef2EQ8",
        "getAef2EQ9",
        "getAef2EQ1Frequency",
        "getAef2EQ2Frequency",
        "getAef2EQ3Frequency",
        "getAef2EQ4Frequency",
        "getAef2EQ5Frequency",
        "getAef2EQ6Frequency",
        "getAef2EQ7Frequency",
        "getAef2EQ8Frequency",
        "getAef2EQ9Frequency",
        "getAef2MusicEQ1",
        "getAef2MusicEQ2",
        "getAef2MusicEQ3",
        "getAef2MusicEQ4",
        "getAef2MusicEQ5",
        "getAef2MusicEQ6",
        "getAef2MusicEQ7",
        "getAef2MusicEQ8",
        "getAef2MusicEQ9",
        "getAef2MusicEQ1Frequency",
        "getAef2MusicEQ2Frequency",
        "getAef2MusicEQ3Frequency",
        "getAef2MusicEQ4Frequency",
        "getAef2MusicEQ5Frequency",
        "getAef2MusicEQ6Frequency",
        "getAef2MusicEQ7Frequency",
        "getAef2MusicEQ8Frequency",
        "getAef2MusicEQ9Frequency",
        "getAef3EqQ1",
        "getAef3EqQ2",
        "getAef3EqQ3",
        "getAef3EqQ4",
        "getAef3EqQ5",
        "getAef3EqQ6",
        "getAef3EqQ7",
        "getAef3EqQ8",
        "getAef3EqQ9",
        "getAef3EQ1Type",
        "getAef3EQ2Type",
        "getAef3EQ3Type",
        "getAef3EQ4Type",
        "getAef3EQ5Type",
        "getAef3EQ6Type",
        "getAef3EQ7Type",
        "getAef3EQ8Type",
        "getAef3EQ9Type",
        "setAef2EchoEnable",
        "isAef2EchoEnable",
        "echoGain",
        "setAef2EchoGain",
        "getAef2EchoGain",
        "echoType",
        "setAef2EchoType",
        "getAef2EchoType",
        "echoTime",
        "setAef2EchoTime",
        "getAef2EchoTime",
        "value",
        "setAef2EchoFeedBack",
        "getAef2EchoFeedBack",
        "setAef3EchoHicut",
        "getAef3EchoHicut",
        "setAef3EchoLowcut",
        "getAef3EchoLowcut",
        "setAef3EchoStwide",
        "getAef3EchoStwide",
        "setAef2ReverbEnable",
        "isAef2ReverbEnable",
        "setAef3ReverbFsEnable",
        "getAef3ReverbFsEnable",
        "mode",
        "setAef2ReverbMode",
        "getAef2ReverbMode",
        "setAef2ReverbVolume",
        "getAef2ReverbVolume",
        "time",
        "setAef2ReverbTime",
        "getAef2ReverbTime",
        "setAef3ReverbHicut",
        "getAef3ReverbHicut",
        "setAef3ReverbHidamp",
        "getAef3ReverbHidamp",
        "setAef3ReverbLowcut",
        "getAef3ReverbLowcut",
        "setAef3ReverbStwide",
        "getAef3ReverbStwide",
        "setAef2CompressorEnable",
        "isAef2CompressorEnable",
        "setAef2CompressorRatio",
        "getAef2CompressorRatio",
        "setAef2CompressorThreshold",
        "getAef2CompressorThreshold",
        "setAef2CompressorAttack",
        "getAef2CompressorAttack",
        "setAef2CompressorRelease",
        "getAef2CompressorRelease",
        "setAef2CompressorPregain",
        "getAef2CompressorPregain",
        "setAef2VoiceChangeEnable",
        "isAef2VoiceChangeEnable",
        "setAef2VoiceMode",
        "getAef2VoiceMode",
        "",
        "fixGain",
        "setEnvironmentalSound",
        "(ID)V",
        "getEnvironmentalSound",
        "setAef4SceneEffectMode",
        "getAef4SceneEffectMode",
        "setAef4ReverbVolume",
        "getAef4ReverbVolume",
        "setAef4BypassEnable",
        "getAef4BypassEnable",
        "getRecordVocalOffset",
        "",
        "deviceCard",
        "setDeviceCard",
        "(Ljava/lang/String;)V",
        "getCarOutPregainAdd",
        "recoveryFromJson",
        "()V",
        "volumeUp",
        "volumeDown",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getAef1ReverbOutGain()I
.end method

.method public abstract getAef2CompressorAttack()I
.end method

.method public abstract getAef2CompressorPregain()I
.end method

.method public abstract getAef2CompressorRatio()I
.end method

.method public abstract getAef2CompressorRelease()I
.end method

.method public abstract getAef2CompressorThreshold()I
.end method

.method public abstract getAef2EQ1()I
.end method

.method public abstract getAef2EQ1Frequency()I
.end method

.method public abstract getAef2EQ2()I
.end method

.method public abstract getAef2EQ2Frequency()I
.end method

.method public abstract getAef2EQ3()I
.end method

.method public abstract getAef2EQ3Frequency()I
.end method

.method public abstract getAef2EQ4()I
.end method

.method public abstract getAef2EQ4Frequency()I
.end method

.method public abstract getAef2EQ5()I
.end method

.method public abstract getAef2EQ5Frequency()I
.end method

.method public abstract getAef2EQ6()I
.end method

.method public abstract getAef2EQ6Frequency()I
.end method

.method public abstract getAef2EQ7()I
.end method

.method public abstract getAef2EQ7Frequency()I
.end method

.method public abstract getAef2EQ8()I
.end method

.method public abstract getAef2EQ8Frequency()I
.end method

.method public abstract getAef2EQ9()I
.end method

.method public abstract getAef2EQ9Frequency()I
.end method

.method public abstract getAef2EchoFeedBack()I
.end method

.method public abstract getAef2EchoGain()I
.end method

.method public abstract getAef2EchoTime()I
.end method

.method public abstract getAef2EchoType()I
.end method

.method public abstract getAef2MusicEQ1()I
.end method

.method public abstract getAef2MusicEQ1Frequency()I
.end method

.method public abstract getAef2MusicEQ2()I
.end method

.method public abstract getAef2MusicEQ2Frequency()I
.end method

.method public abstract getAef2MusicEQ3()I
.end method

.method public abstract getAef2MusicEQ3Frequency()I
.end method

.method public abstract getAef2MusicEQ4()I
.end method

.method public abstract getAef2MusicEQ4Frequency()I
.end method

.method public abstract getAef2MusicEQ5()I
.end method

.method public abstract getAef2MusicEQ5Frequency()I
.end method

.method public abstract getAef2MusicEQ6()I
.end method

.method public abstract getAef2MusicEQ6Frequency()I
.end method

.method public abstract getAef2MusicEQ7()I
.end method

.method public abstract getAef2MusicEQ7Frequency()I
.end method

.method public abstract getAef2MusicEQ8()I
.end method

.method public abstract getAef2MusicEQ8Frequency()I
.end method

.method public abstract getAef2MusicEQ9()I
.end method

.method public abstract getAef2MusicEQ9Frequency()I
.end method

.method public abstract getAef2ReverbMode()I
.end method

.method public abstract getAef2ReverbTime()I
.end method

.method public abstract getAef2ReverbVolume()I
.end method

.method public abstract getAef2VoiceMode()I
.end method

.method public abstract getAef3EQ1Type()I
.end method

.method public abstract getAef3EQ2Type()I
.end method

.method public abstract getAef3EQ3Type()I
.end method

.method public abstract getAef3EQ4Type()I
.end method

.method public abstract getAef3EQ5Type()I
.end method

.method public abstract getAef3EQ6Type()I
.end method

.method public abstract getAef3EQ7Type()I
.end method

.method public abstract getAef3EQ8Type()I
.end method

.method public abstract getAef3EQ9Type()I
.end method

.method public abstract getAef3EchoHicut()I
.end method

.method public abstract getAef3EchoLowcut()I
.end method

.method public abstract getAef3EchoStwide()I
.end method

.method public abstract getAef3EqQ1()I
.end method

.method public abstract getAef3EqQ2()I
.end method

.method public abstract getAef3EqQ3()I
.end method

.method public abstract getAef3EqQ4()I
.end method

.method public abstract getAef3EqQ5()I
.end method

.method public abstract getAef3EqQ6()I
.end method

.method public abstract getAef3EqQ7()I
.end method

.method public abstract getAef3EqQ8()I
.end method

.method public abstract getAef3EqQ9()I
.end method

.method public abstract getAef3ReverbFsEnable()I
.end method

.method public abstract getAef3ReverbHicut()I
.end method

.method public abstract getAef3ReverbHidamp()I
.end method

.method public abstract getAef3ReverbLowcut()I
.end method

.method public abstract getAef3ReverbStwide()I
.end method

.method public abstract getAef4BypassEnable()I
.end method

.method public abstract getAef4ReverbVolume()I
.end method

.method public abstract getAef4SceneEffectMode()I
.end method

.method public abstract getBalance()I
.end method

.method public abstract getCarOutPregainAdd()I
.end method

.method public abstract getEnvironmentalSound()I
.end method

.method public abstract getMicVolume()I
.end method

.method public abstract getMusicVolume()I
.end method

.method public abstract getRecordVocalOffset()I
.end method

.method public abstract getSystemVolume()I
.end method

.method public abstract isAef1ReverbEnable()Z
.end method

.method public abstract isAef2CompressorEnable()Z
.end method

.method public abstract isAef2EQEnable()Z
.end method

.method public abstract isAef2EchoEnable()Z
.end method

.method public abstract isAef2MusicEQEnable()Z
.end method

.method public abstract isAef2ReverbEnable()Z
.end method

.method public abstract isAef2VoiceChangeEnable()Z
.end method

.method public abstract isMicVolumeEnable()Z
.end method

.method public abstract recoveryFromJson()V
.end method

.method public abstract setAef1ReverbEnable(Z)V
.end method

.method public abstract setAef1ReverbOutGain(I)V
.end method

.method public abstract setAef2CompressorAttack(I)V
.end method

.method public abstract setAef2CompressorEnable(Z)V
.end method

.method public abstract setAef2CompressorPregain(I)V
.end method

.method public abstract setAef2CompressorRatio(I)V
.end method

.method public abstract setAef2CompressorRelease(I)V
.end method

.method public abstract setAef2CompressorThreshold(I)V
.end method

.method public abstract setAef2EQ1(I)V
.end method

.method public abstract setAef2EQ1Frequency(I)V
.end method

.method public abstract setAef2EQ2(I)V
.end method

.method public abstract setAef2EQ2Frequency(I)V
.end method

.method public abstract setAef2EQ3(I)V
.end method

.method public abstract setAef2EQ3Frequency(I)V
.end method

.method public abstract setAef2EQ4(I)V
.end method

.method public abstract setAef2EQ4Frequency(I)V
.end method

.method public abstract setAef2EQ5(I)V
.end method

.method public abstract setAef2EQ5Frequency(I)V
.end method

.method public abstract setAef2EQ6(I)V
.end method

.method public abstract setAef2EQ6Frequency(I)V
.end method

.method public abstract setAef2EQ7(I)V
.end method

.method public abstract setAef2EQ7Frequency(I)V
.end method

.method public abstract setAef2EQ8(I)V
.end method

.method public abstract setAef2EQ8Frequency(I)V
.end method

.method public abstract setAef2EQ9(I)V
.end method

.method public abstract setAef2EQ9Frequency(I)V
.end method

.method public abstract setAef2EQEnable(Z)V
.end method

.method public abstract setAef2EchoEnable(Z)V
.end method

.method public abstract setAef2EchoFeedBack(I)V
.end method

.method public abstract setAef2EchoGain(I)V
.end method

.method public abstract setAef2EchoTime(I)V
.end method

.method public abstract setAef2EchoType(I)V
.end method

.method public abstract setAef2MusicEQ1(I)V
.end method

.method public abstract setAef2MusicEQ1Frequency(I)V
.end method

.method public abstract setAef2MusicEQ2(I)V
.end method

.method public abstract setAef2MusicEQ2Frequency(I)V
.end method

.method public abstract setAef2MusicEQ3(I)V
.end method

.method public abstract setAef2MusicEQ3Frequency(I)V
.end method

.method public abstract setAef2MusicEQ4(I)V
.end method

.method public abstract setAef2MusicEQ4Frequency(I)V
.end method

.method public abstract setAef2MusicEQ5(I)V
.end method

.method public abstract setAef2MusicEQ5Frequency(I)V
.end method

.method public abstract setAef2MusicEQ6(I)V
.end method

.method public abstract setAef2MusicEQ6Frequency(I)V
.end method

.method public abstract setAef2MusicEQ7(I)V
.end method

.method public abstract setAef2MusicEQ7Frequency(I)V
.end method

.method public abstract setAef2MusicEQ8(I)V
.end method

.method public abstract setAef2MusicEQ8Frequency(I)V
.end method

.method public abstract setAef2MusicEQ9(I)V
.end method

.method public abstract setAef2MusicEQ9Frequency(I)V
.end method

.method public abstract setAef2MusicEQEnable(Z)V
.end method

.method public abstract setAef2ReverbEnable(Z)V
.end method

.method public abstract setAef2ReverbMode(I)V
.end method

.method public abstract setAef2ReverbTime(I)V
.end method

.method public abstract setAef2ReverbVolume(I)V
.end method

.method public abstract setAef2VoiceChangeEnable(Z)V
.end method

.method public abstract setAef2VoiceMode(I)V
.end method

.method public abstract setAef3EQ1Type(I)V
.end method

.method public abstract setAef3EQ2Type(I)V
.end method

.method public abstract setAef3EQ3Type(I)V
.end method

.method public abstract setAef3EQ4Type(I)V
.end method

.method public abstract setAef3EQ5Type(I)V
.end method

.method public abstract setAef3EQ6Type(I)V
.end method

.method public abstract setAef3EQ7Type(I)V
.end method

.method public abstract setAef3EQ8Type(I)V
.end method

.method public abstract setAef3EQ9Type(I)V
.end method

.method public abstract setAef3EchoHicut(I)V
.end method

.method public abstract setAef3EchoLowcut(I)V
.end method

.method public abstract setAef3EchoStwide(I)V
.end method

.method public abstract setAef3EqQ1(I)V
.end method

.method public abstract setAef3EqQ2(I)V
.end method

.method public abstract setAef3EqQ3(I)V
.end method

.method public abstract setAef3EqQ4(I)V
.end method

.method public abstract setAef3EqQ5(I)V
.end method

.method public abstract setAef3EqQ6(I)V
.end method

.method public abstract setAef3EqQ7(I)V
.end method

.method public abstract setAef3EqQ8(I)V
.end method

.method public abstract setAef3EqQ9(I)V
.end method

.method public abstract setAef3ReverbFsEnable(I)V
.end method

.method public abstract setAef3ReverbHicut(I)V
.end method

.method public abstract setAef3ReverbHidamp(I)V
.end method

.method public abstract setAef3ReverbLowcut(I)V
.end method

.method public abstract setAef3ReverbStwide(I)V
.end method

.method public abstract setAef4BypassEnable(I)V
.end method

.method public abstract setAef4ReverbVolume(I)V
.end method

.method public abstract setAef4SceneEffectMode(I)V
.end method

.method public abstract setBalance(I)V
.end method

.method public abstract setDeviceCard(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setEnvironmentalSound(ID)V
.end method

.method public abstract setMicVolume(I)V
.end method

.method public abstract setMicVolumeEnable(Z)V
.end method

.method public abstract setMusicVolume(I)V
.end method

.method public abstract setSystemVolume(I)V
.end method

.method public abstract volumeDown(I)V
.end method

.method public abstract volumeUp(I)V
.end method
