.class public final Lcom/ludo/jeepcontrols/ObdReadOnlySignals;
.super Ljava/lang/Object;
.source "ObdReadOnlySignals.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([BII)Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static classifyFob(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0202"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Locked"

    return-object p0

    :cond_0
    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Unlocked"

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static extractGear0510(Ljava/lang/String;)I
    .locals 3

    .line 10
    const/16 v0, 0x510

    const-string v1, "7E9"

    invoke-static {p0, v0, v1}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->reassembleDid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, "ERR:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 13
    :catchall_0
    move-exception p0

    return v0

    .line 11
    :cond_1
    :goto_0
    return v0
.end method

.method public static reassembleDid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 23
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_10

    .line 24
    :cond_0
    const-string v3, ""

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[\\r\\n]+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v0, 0x2

    const/4 v8, 0x1

    if-ge v7, v5, :cond_c

    aget-object v9, v4, v7

    .line 28
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 29
    if-gez v10, :cond_2

    goto/16 :goto_5

    .line 30
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    move v11, v6

    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x30

    if-ge v11, v12, :cond_7

    .line 33
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 34
    if-lt v12, v13, :cond_3

    const/16 v14, 0x39

    if-le v12, v14, :cond_4

    :cond_3
    const/16 v14, 0x41

    if-lt v12, v14, :cond_5

    const/16 v14, 0x46

    if-gt v12, v14, :cond_5

    :cond_4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 35
    :cond_5
    const/16 v14, 0x20

    if-eq v12, v14, :cond_6

    const/16 v14, 0x9

    if-eq v12, v14, :cond_6

    const/16 v14, 0x3a

    if-eq v12, v14, :cond_6

    const/16 v14, 0x2d

    if-ne v12, v14, :cond_7

    .line 32
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 38
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-le v9, v8, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v11, 0x38

    if-gt v9, v11, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 39
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    goto :goto_5

    .line 40
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    div-int/2addr v8, v0

    new-array v0, v8, [B

    .line 42
    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_a

    mul-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v11, 0x2

    :try_start_0
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 43
    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    nop

    .line 44
    if-lez v8, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 46
    :cond_c
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 47
    move v4, v6

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v7, "ERR:NO_POSITIVE"

    if-ge v4, v5, :cond_22

    .line 48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 49
    array-length v9, v5

    if-ge v9, v0, :cond_d

    goto :goto_9

    .line 50
    :cond_d
    aget-byte v9, v5, v6

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v9, 0x4

    and-int/lit8 v10, v10, 0xf

    .line 51
    const-string v11, "ERR:DID_MISMATCH"

    const/16 v12, 0x62

    const/4 v13, 0x3

    if-nez v10, :cond_13

    .line 52
    and-int/lit8 v9, v9, 0xf

    .line 53
    if-lez v9, :cond_14

    array-length v10, v5

    add-int/lit8 v14, v9, 0x1

    if-ge v10, v14, :cond_e

    goto :goto_9

    .line 54
    :cond_e
    new-array v2, v9, [B

    .line 55
    invoke-static {v5, v8, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    if-lt v9, v13, :cond_12

    aget-byte v4, v2, v6

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v12, :cond_f

    goto :goto_8

    .line 57
    :cond_f
    aget-byte v4, v2, v8

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v3, :cond_11

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_10

    goto :goto_7

    .line 58
    :cond_10
    invoke-static {v2, v13, v9}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_11
    :goto_7
    return-object v11

    .line 56
    :cond_12
    :goto_8
    return-object v7

    .line 60
    :cond_13
    if-eq v10, v8, :cond_15

    .line 47
    :cond_14
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 61
    :cond_15
    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, v5, v8

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 62
    if-ge v9, v13, :cond_16

    const-string v0, "ERR:MALFORMED_ISOTP"

    return-object v0

    .line 63
    :cond_16
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    move v14, v0

    :goto_a
    array-length v15, v5

    if-ge v14, v15, :cond_17

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v9, :cond_17

    aget-byte v15, v5, v14

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 65
    :cond_17
    nop

    .line 66
    add-int/2addr v4, v8

    move v5, v8

    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v15, "ERR:INCOMPLETE_ISOTP"

    if-ge v4, v14, :cond_1c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v14, v9, :cond_1c

    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 68
    move/from16 p0, v6

    array-length v6, v14

    if-ge v6, v8, :cond_18

    move/from16 p2, v8

    goto :goto_d

    .line 69
    :cond_18
    aget-byte v6, v14, p0

    and-int/lit16 v6, v6, 0xff

    .line 70
    shr-int/lit8 v16, v6, 0x4

    move/from16 p2, v8

    and-int/lit8 v8, v16, 0xf

    if-eq v8, v0, :cond_19

    goto :goto_d

    .line 71
    :cond_19
    and-int/lit8 v6, v6, 0xf

    .line 72
    and-int/lit8 v8, v5, 0xf

    if-eq v6, v8, :cond_1a

    return-object v15

    .line 73
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 74
    move/from16 v6, p2

    :goto_c
    array-length v8, v14

    if-ge v6, v8, :cond_1b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v9, :cond_1b

    aget-byte v8, v14, v6

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 66
    :cond_1b
    :goto_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, p0

    move/from16 v8, p2

    goto :goto_b

    :cond_1c
    move/from16 p0, v6

    move/from16 p2, v8

    .line 76
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v9, :cond_1d

    return-object v15

    .line 77
    :cond_1d
    new-array v2, v9, [B

    .line 78
    move/from16 v4, p0

    :goto_e
    if-ge v4, v9, :cond_1e

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 79
    :cond_1e
    aget-byte v4, v2, p0

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v12, :cond_1f

    return-object v7

    .line 80
    :cond_1f
    aget-byte v4, v2, p2

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v3, :cond_21

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_20

    goto :goto_f

    .line 81
    :cond_20
    invoke-static {v2, v13, v9}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_21
    :goto_f
    return-object v11

    .line 83
    :cond_22
    return-object v7

    .line 23
    :cond_23
    :goto_10
    const-string v0, "ERR:NO_RESPONSE"

    return-object v0
.end method
